-- DuckDB
DECLARE $VBLocal_SelectedValue  -- Int32
SET     $VBLocal_SelectedValue = 1

SELECT
	w.ParentID,
	w.ChildID,
	w.GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID = CAST($VBLocal_SelectedValue AS INTEGER)

