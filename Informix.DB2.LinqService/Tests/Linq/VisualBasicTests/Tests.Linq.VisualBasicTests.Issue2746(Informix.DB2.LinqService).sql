BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @VBLocal_SelectedValue Integer(4) -- Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	w.ParentID,
	w.ChildID,
	w.GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID = @VBLocal_SelectedValue

