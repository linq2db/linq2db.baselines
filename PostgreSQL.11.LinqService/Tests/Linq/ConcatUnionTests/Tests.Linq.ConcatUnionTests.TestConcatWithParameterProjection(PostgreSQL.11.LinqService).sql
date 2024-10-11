BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @someValue Integer -- Int32
SET     @someValue = 3
DECLARE @someValue_1 Integer -- Int32
SET     @someValue_1 = 3

SELECT
	:someValue::Int,
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" <= :someValue_1
UNION ALL
SELECT
	:someValue::Int,
	c_2."ChildID"
FROM
	"Child" c_2
WHERE
	c_2."ChildID" > :someValue_1

