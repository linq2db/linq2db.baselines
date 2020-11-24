BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	(NOT EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` <= 3
	)) as `c1`

