BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			`p`.`ChildID`
		FROM
			`Child` `p`
		LIMIT @take
	)
FROM
	`Parent` `p_1`

