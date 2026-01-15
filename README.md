# AIchor Test Project

---

## Add PVC to Manifest

```yaml
storage:
  attachExistingPVCs:
    - name: project-pvc-id
      mountPoint: /mnt/project-pvc-id
```

---

## Add Runtime Variables to `main.py`

Add the following after `parser.add_argument()`:

```python
print(os.environ.get("runtime_var"))
print(os.environ["AICHOR_USER_NAME"])
print(os.environ["AICHOR_USER_EMAIL"])
print(os.environ["AICHOR_CLUSTER_NAME"])
print(os.environ["VCS_TYPE"])
```

---

## Add Build Variable to `build/Dockerfile`

Insert this after `RUN pip install`:

```dockerfile
RUN --mount=type=secret,id=_env,dst=/etc/secrets/.env . /etc/secrets/.env && echo "$build_var"
```