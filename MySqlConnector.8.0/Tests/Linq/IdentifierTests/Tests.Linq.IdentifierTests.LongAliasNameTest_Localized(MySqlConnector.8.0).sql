-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	`long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1`.`ParentID`,
	`long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1`.`Value1`
FROM
	`Parent` `long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1`
		INNER JOIN `Child` `long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias` ON `long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias`.`ParentID` = `long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1`.`ParentID`
WHERE
	`long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlias_1`.`ParentID` = @parentId

