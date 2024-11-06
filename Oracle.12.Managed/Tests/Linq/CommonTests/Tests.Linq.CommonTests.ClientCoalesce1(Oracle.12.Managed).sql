BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	x."Value1"
FROM
	"Parent" x
WHERE
	Coalesce(x."Value1", :Value1) > 10

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."Value1"
FROM
	"Parent" p

