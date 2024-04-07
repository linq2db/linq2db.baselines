BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @default_1 Int32
SET     @default_1 = 0

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Nvl(p."Value1", :default_1) > 0

