-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	`longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent`.`ParentID`,
	`longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent`.`Value1`
FROM
	`Parent` `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent`
		INNER JOIN `Child` `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild` ON `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild`.`ParentID` = `longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent`.`ParentID`
WHERE
	`longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent`.`ParentID` = @parentId

