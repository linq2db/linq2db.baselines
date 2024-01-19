BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @default Integer -- Int32
SET     @default = 0

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Coalesce(p."Value1", :default) > 0

