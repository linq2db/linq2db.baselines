-- PostgreSQL.19 PostgreSQL12
SELECT
	1
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
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 2

SELECT
	t1."Item1_1",
	CASE
		WHEN t1."Item1" IS NOT NULL THEN :Item1
		ELSE NULL
	END
FROM
	(
		SELECT
			1 as c1
	) t2
		LEFT JOIN (
			SELECT
				:Item1 as "Item1",
				1 as "Item1_1"
			FROM
				"BatchItem" i
			WHERE
				i."Id" > 100
		) t1 ON 1=1
