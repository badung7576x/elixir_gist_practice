## Practice with postgres

### User management
https://phoenixnap.com/kb/postgres-create-user

1. Create user in psql shell with password
```bash
$ psql -U postgres
$ CREATE USER <username> WITH PASSWORD '<password>';
```
2. Grant role for created user
```bash
$ ALTER USER <username> WITH CREATEDB;
```

3. Check list user 
```bash
$ \du
```

