-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	(
		SELECT
			`se`.`Value`
		FROM
			`StringAssociationValue` `se`
		WHERE
			`se`.`Id` = `t1`.`Id`
		LIMIT 1
	)
FROM
	`StringAssociationOwner` `t1`

