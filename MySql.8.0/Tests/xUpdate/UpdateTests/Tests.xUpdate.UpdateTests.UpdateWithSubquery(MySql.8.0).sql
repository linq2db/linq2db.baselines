-- MySql.8.0 MySql.8.0.MySql.Data MySql80
UPDATE
	`UpdateOuterTable` `t1`
SET
	`t1`.`Field1` = (
		SELECT
			`y`.`Field4`
		FROM
			`UpdateInnerTable` `y`
		WHERE
			`t1`.`Field2` = `y`.`Field3`
		ORDER BY
			`y`.`Field4`
		LIMIT 1
	)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Field1`,
	`t1`.`Field2`
FROM
	`UpdateOuterTable` `t1`
ORDER BY
	`t1`.`Id`

