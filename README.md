Cloudbase-Init Userdata

To build a multipart mime file:

```
write-mime-multipart -o test.mime windows.yaml:text/cloud-config powershell_test.ps1:text/x-shellscript
```

Supported mimetypes are available from https://cloudbase-init.readthedocs.io/en/latest/userdata.html#multi-part-content
