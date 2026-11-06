-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1.c1
FROM
	(
		SELECT
			LAG(i."Id") OVER (ORDER BY i."Id") as c1,
			i."Id"
		FROM
			"BatchItem" i
	) t1
ORDER BY
	t1."Id"
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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
			t1.c1
		FROM
			(
				SELECT
					LAG(i."Id") OVER (ORDER BY i."Id") as c1,
					i."Id"
				FROM
					"BatchItem" i
			) t1
		ORDER BY
			t1."Id"
		LIMIT 1
	)
