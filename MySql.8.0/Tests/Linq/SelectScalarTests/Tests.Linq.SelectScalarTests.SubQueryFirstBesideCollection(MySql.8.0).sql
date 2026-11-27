-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @take

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`ParentID`
		LIMIT 1
	) as `FirstId`

