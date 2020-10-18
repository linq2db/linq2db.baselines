BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p_1`.`Value_2`,
	`p_1`.`ParentID`
FROM
	(
		SELECT
			`p`.`Value1` + 1 as `Value_1`,
			`p`.`ParentID`,
			`p`.`Value1` as `Value_2`
		FROM
			`Parent` `p`
	) `p_1`
WHERE
	`p_1`.`Value_1` = 2 AND `p_1`.`ParentID` = 1

