-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`ReferenceConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Guarded` OR `r`.`Plain` IS NULL AND `r`.`Guarded` IS NULL

