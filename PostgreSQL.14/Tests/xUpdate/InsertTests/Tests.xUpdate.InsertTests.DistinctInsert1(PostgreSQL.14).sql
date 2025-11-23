-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1."ID" > 1000

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"GuidValue",
	"BoolValue"
)
SELECT
	Floor(t2."Value_1" + 1001)::Int,
	gen_random_uuid(),
	True
FROM
	(
		SELECT DISTINCT
			Floor(t1."ID"::Float / 3) as "Value_1"
		FROM
			"LinqDataTypes" t1
	) t2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"LinqDataTypes" c_1
WHERE
	c_1."ID" > 1000

