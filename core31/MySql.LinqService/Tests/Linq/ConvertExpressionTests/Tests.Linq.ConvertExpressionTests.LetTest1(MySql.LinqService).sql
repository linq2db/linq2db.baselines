BeforeExecute
-- MySql MySql.Official MySql

SELECT
	(
		SELECT
			`p`.`ParentID`
		FROM
			`Child` `p`
		WHERE
			`p_1`.`ParentID` = `p`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `p_1`
WHERE
	(
		SELECT
			1
		FROM
			`Child` `t1`
		WHERE
			`p_1`.`ParentID` = `t1`.`ParentID`
		LIMIT 1
	) IS NOT NULL

