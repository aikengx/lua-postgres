DBNAME = "postgres"
DBUSER = "postgres"
DBPASSWORD = "123456"
DBHOST = "127.0.0.1"
DBPORT = "5432"
luasql = require "luasql.postgres"
--
env = luasql.postgres()
con = env:connect(DBNAME, DBUSER, DBPASSWORD, DBHOST, DBPORT)
cur = con:execute("SELECT NOW()")
row = cur:fetch({},"a")
DATE = row.now;
print (env, con, cur)
print ("El SYSDATE en la BD es => " .. DATE)
cur:close()
con:close()
env:close()
