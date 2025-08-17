BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @param Int32
SET     @param = 1

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."Value1" = :param

