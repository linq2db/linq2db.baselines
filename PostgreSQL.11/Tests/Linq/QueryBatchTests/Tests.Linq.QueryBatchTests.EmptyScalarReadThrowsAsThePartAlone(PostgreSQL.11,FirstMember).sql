-- PostgreSQL.11 PostgreSQL
SELECT
	i."Id",
	i."Value",
	i."GroupId",
	i."Name"
FROM
	"BatchItem" i
WHERE
	i."Id" > 100
ORDER BY
	i."Id"
LIMIT 1

-- PostgreSQL.11 PostgreSQL
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
		ORDER BY
			i."Id"
		LIMIT 1
	)
