BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	(
		SELECT DISTINCT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `p`

