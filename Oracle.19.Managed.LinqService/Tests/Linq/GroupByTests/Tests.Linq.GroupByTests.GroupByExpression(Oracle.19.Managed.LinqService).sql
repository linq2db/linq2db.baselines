BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Nvl(MIN(gr."ParentID"), :defValue)
FROM
	"Parent" gr

