-- PostgreSQL.18 PostgreSQL12
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	:Value1
FROM
	"Parent" p

-- PostgreSQL.18 PostgreSQL12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	:Value1
FROM
	"Parent" p

-- PostgreSQL.18 PostgreSQL12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

