BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	1 = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @param Int32
SET     @param = 1

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."Value1" = :param

