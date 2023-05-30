BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @_default Integer -- Int32
SET     @_default = 0

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Coalesce(p."Value1", :_default) > 0

