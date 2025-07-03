BeforeExecute
-- Firebird.5 Firebird4
DECLARE @VBLocal_SelectedValue Integer -- Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	"w"."ParentID",
	"w"."ChildID",
	"w"."GrandChildID"
FROM
	"GrandChild" "w"
WHERE
	"w"."ChildID" = @VBLocal_SelectedValue

