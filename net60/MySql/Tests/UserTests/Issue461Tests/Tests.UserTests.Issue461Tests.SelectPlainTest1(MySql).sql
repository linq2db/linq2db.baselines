BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			`c_1`.`ParentID` + 1
		FROM
			`Child` `c_1`
		LIMIT @take
	)
FROM
	`Parent` `p`

