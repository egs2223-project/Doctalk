# Cloning
```
git clone --recurse-submodules git@github.com:egs2223-project/Doctalk.git
```

# Fetch updates from submodules
```
git submodule update --remote
```

# Before running
## Creating a .NET self signed certificate for localhost
```bash
cd Doctalk
mkdir certs
dotnet dev-certs https --export-path ./certs/cert.pfx --password password
```

# Running
```bash
docker compose up
```