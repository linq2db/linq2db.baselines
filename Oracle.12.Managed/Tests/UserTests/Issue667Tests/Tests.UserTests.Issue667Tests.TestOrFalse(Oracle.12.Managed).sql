BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	f."ParentID",
	f."Value1"
FROM
	"Parent" f
WHERE
	f."ParentID" >= 1 OR f."ParentID" <= 4

