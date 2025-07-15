BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN(gr."ParentID"), :defValue)
FROM
	"Parent" gr

