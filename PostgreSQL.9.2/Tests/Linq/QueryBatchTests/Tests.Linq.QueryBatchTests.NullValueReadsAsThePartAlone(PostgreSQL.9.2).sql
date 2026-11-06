-- PostgreSQL.9.2 PostgreSQL
SELECT
	i."Value"
FROM
	"BatchItem" i
WHERE
	i."Id" = 3
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
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
			i."Value"
		FROM
			"BatchItem" i
		WHERE
			i."Id" = 3
		LIMIT 1
	)
