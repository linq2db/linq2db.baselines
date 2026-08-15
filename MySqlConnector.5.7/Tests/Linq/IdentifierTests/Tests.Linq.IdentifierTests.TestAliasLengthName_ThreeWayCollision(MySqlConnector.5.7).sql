-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	`longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_2`.`ParentID`,
	`longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_2`.`Value1`
FROM
	`Parent` `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_2`
		INNER JOIN `Child` `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam` ON `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam`.`ParentID` = `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_2`.`ParentID`
		INNER JOIN `GrandChild` `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1` ON `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_1`.`ChildID` = `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam`.`ChildID`
WHERE
	`longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNam_2`.`ParentID` = @parentId

