-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`
ORDER BY
	CASE
		WHEN `t1`.`Value` IS NULL THEN 1
		ELSE 0
	END,
	`t1`.`Value` DESC,
	`t1`.`Id`
LIMIT @take

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Grp`,
	`t1`.`Value`
FROM
	`NullsTable` `t1`

