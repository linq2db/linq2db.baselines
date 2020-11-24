BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = 100

SELECT
	Nvl(p."Value1", :p1)
FROM
	"Parent" p

