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
	t1."Item1_1",
	CASE
		WHEN t1."Item1" IS NOT NULL THEN 2
		ELSE NULL
	END
FROM
	(
		SELECT
			1 as c1
	) t2
		LEFT JOIN (
			SELECT
				2 as "Item1",
				1 as "Item1_1"
			FROM
				"BatchItem" i
			WHERE
				i."Id" = 1
		) t1 ON 1=1
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	1
FROM
	"BatchItem" i
WHERE
	i."Id" = 1
LIMIT 2

