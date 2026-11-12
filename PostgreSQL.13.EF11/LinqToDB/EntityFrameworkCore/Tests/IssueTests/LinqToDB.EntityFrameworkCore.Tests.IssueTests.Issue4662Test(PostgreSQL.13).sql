Parameters:
@p0='?'

INSERT INTO "Issue4662" ("Value")
VALUES (@p0)
RETURNING "Id";


-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue4662" t1



