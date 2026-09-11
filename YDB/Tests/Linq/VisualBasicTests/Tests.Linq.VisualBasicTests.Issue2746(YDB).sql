-- YDB Ydb
DECLARE $VBLocal_SelectedValue Int32
SET     $VBLocal_SelectedValue = 1

SELECT
	w.ParentID as ParentID,
	w.ChildID as ChildID,
	w.GrandChildID as GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID = $VBLocal_SelectedValue

