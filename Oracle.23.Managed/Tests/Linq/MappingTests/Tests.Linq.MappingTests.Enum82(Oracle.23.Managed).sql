BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @testValue Int32
SET     @testValue = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" = :testValue

