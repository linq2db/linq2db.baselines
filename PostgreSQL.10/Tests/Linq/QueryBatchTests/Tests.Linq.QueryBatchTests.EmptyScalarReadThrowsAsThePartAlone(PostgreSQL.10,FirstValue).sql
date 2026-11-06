-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	i."Id"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
LIMIT 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
		LIMIT 1
	)
