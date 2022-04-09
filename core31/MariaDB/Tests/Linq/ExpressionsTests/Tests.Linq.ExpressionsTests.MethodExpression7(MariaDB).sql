BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @n Int32
SET     @n = 2

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID`
	) + @n
FROM
	`Parent` `p`

