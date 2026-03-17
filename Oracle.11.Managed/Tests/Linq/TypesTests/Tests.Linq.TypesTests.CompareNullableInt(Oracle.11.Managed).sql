-- Oracle.11.Managed Oracle11

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t

-- Oracle.11.Managed Oracle11
DECLARE @param Int32
SET     @param = 1

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."Value1" = :param

