BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT DISTINCT 
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID`
		LIMIT @take
	)
FROM
	`Parent` `p`

