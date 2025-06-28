BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @VBLocal_SelectedValue Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	`w`.`ParentID`,
	`w`.`ChildID`,
	`w`.`GrandChildID`
FROM
	`GrandChild` `w`
WHERE
	`w`.`ChildID` = @VBLocal_SelectedValue

