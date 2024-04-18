BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

