BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	Nvl(p."Value1", 0) > 0

