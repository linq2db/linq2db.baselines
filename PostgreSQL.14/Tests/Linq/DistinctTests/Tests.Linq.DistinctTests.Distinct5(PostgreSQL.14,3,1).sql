BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	:Value1
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce(p."Value1", (p."ParentID"::decimal % 2)::decimal),
	:Value1
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

