-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @someValue Integer -- Int32
SET     @someValue = 3

SELECT
	:someValue::Int,
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" <= :someValue
UNION ALL
SELECT
	:someValue::Int,
	c_2."ChildID"
FROM
	"Child" c_2
WHERE
	c_2."ChildID" > :someValue

