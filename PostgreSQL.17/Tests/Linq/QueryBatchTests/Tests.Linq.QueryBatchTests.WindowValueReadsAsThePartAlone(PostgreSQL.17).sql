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
	t2."Item1",
	t2."Item1_1"
FROM
	(
		SELECT
			1 as c1
	) t3
		LEFT JOIN (
			SELECT
				1 as "Item1",
				t1.c1 as "Item1_1"
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
		) t2 ON 1=1
