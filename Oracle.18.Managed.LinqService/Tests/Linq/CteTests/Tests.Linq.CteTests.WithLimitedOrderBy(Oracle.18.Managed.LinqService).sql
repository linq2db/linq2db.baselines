BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 3

WITH CTE_1 ("ParentID", "Value1")
AS
(
	SELECT
		t1."ParentID",
		t1."Value1"
	FROM
		"Parent" t1
	ORDER BY
		t1."ParentID" DESC
	FETCH NEXT :take ROWS ONLY
)
SELECT
	t2."ParentID",
	t2."Value1"
FROM
	CTE_1 t2

