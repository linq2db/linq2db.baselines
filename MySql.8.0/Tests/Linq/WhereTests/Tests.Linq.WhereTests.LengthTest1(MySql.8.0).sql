BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`nm_1`.`MiddleName`
FROM
	(
		SELECT
			Char_Length(`nm`.`MiddleName`) as `Length_1`,
			`nm`.`MiddleName`
		FROM
			`Person` `nm`
	) `nm_1`
WHERE
	(`nm_1`.`Length_1` <> 0 OR `nm_1`.`Length_1` IS NULL)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

