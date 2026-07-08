-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @defValue Integer -- Int32
SET     @defValue = 10

SELECT
	Coalesce(MIN(gr."ParentID"), :defValue)
FROM
	"Parent" gr

