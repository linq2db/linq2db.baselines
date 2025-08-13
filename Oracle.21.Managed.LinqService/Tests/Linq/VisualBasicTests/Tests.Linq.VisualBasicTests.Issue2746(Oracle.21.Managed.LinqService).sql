BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @VBLocal_SelectedValue Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	w."ParentID",
	w."ChildID",
	w."GrandChildID"
FROM
	"GrandChild" w
WHERE
	w."ChildID" = :VBLocal_SelectedValue

