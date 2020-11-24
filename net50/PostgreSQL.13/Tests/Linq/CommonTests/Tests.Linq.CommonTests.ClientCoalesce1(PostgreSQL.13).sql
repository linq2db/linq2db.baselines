BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 100

SELECT
	Coalesce(p."Value1", :p1)
FROM
	"Parent" p

