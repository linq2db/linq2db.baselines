-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @testValue Integer -- Int32
SET     @testValue = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" = :testValue

