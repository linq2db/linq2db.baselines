BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	@ParentID,
	`ch`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `gc_1`
		INNER JOIN `Child` `ch` ON `gc_1`.`ParentID` = `ch`.`ParentID`
		INNER JOIN `GrandChild` `gc` ON `ch`.`ChildID` = `gc`.`ChildID`
WHERE
	`ch`.`ChildID` = 21 AND `gc`.`GrandChildID` = 211

