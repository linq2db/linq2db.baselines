BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			`ch`.`ParentID`
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` = `p`.`ParentID`
		LIMIT @take
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

