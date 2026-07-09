-- PostgreSQL.15 PostgreSQL13
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	p."Value1"
FROM
	"Parent" p
ORDER BY
	p."Value1" DESC NULLS LAST
LIMIT :take

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

