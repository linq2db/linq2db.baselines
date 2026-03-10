-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`OuterTable` `t2`
		LEFT JOIN LATERAL (
			SELECT
				`y`.`Field4`
			FROM
				`InnerTable` `y`
			WHERE
				`t2`.`Field2` = `y`.`Field3`
			ORDER BY
				`y`.`Field4`
			LIMIT 1
		) `t1` ON 1=1
SET
	`t2`.`Field1` = `t1`.`Field4`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Field1`,
	`t1`.`Field2`
FROM
	`OuterTable` `t1`
ORDER BY
	`t1`.`Id`

