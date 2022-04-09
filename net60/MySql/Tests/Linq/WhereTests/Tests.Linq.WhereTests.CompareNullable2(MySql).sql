BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = `p`.`Value1` AND `p`.`Value1` = 1

