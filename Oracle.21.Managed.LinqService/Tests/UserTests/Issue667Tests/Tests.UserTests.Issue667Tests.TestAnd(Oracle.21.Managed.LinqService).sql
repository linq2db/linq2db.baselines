BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	f."ParentID",
	f."Value1"
FROM
	"Parent" f
WHERE
	f."ParentID" >= 1 AND f."ParentID" <= 4

