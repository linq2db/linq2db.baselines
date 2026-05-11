-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`TableWithConverterValue` `x`
SET
	`x`.`Test1` = CASE
		WHEN (`x`.`Id` > 0) THEN 'X'
		ELSE NULL
	END
WHERE
	`x`.`Id` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`,
	`x`.`NoConversion`,
	`x`.`Test1`,
	`x`.`Test2`
FROM
	`TableWithConverterValue` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

