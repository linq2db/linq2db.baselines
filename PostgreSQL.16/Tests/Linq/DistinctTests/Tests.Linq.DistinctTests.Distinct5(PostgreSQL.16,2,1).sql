-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	:Value1
FROM
	"Parent" p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	:Value1
FROM
	"Parent" p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

