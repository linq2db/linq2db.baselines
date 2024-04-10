BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`Value1`,
	`p`.`Value1` * 100,
	`p`.`ParentID`,
	`p`.`Value1` * 100
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1 AND `p`.`Value1` * 100 > 0

