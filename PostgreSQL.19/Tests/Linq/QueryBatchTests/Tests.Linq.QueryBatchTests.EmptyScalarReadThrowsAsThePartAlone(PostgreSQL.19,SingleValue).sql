-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
-- Command 1
SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1

-- Command 2
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."Id" > 100
	)
