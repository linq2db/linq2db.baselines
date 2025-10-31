-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 3
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID AND p."Value1" = :Value1

