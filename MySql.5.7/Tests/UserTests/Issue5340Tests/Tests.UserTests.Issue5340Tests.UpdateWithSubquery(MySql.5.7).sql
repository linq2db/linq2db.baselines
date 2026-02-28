-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`OuterTable` `t1`
SET
	`t1`.`Field1` = (
		SELECT
			`y`.`Field4`
		FROM
			`InnerTable` `y`
		WHERE
			`t1`.`Field2` = `y`.`Field3`
		ORDER BY
			`y`.`Field4`
		LIMIT 1
	)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Field1`,
	`t1`.`Field2`
FROM
	`OuterTable` `t1`
ORDER BY
	`t1`.`Id`

