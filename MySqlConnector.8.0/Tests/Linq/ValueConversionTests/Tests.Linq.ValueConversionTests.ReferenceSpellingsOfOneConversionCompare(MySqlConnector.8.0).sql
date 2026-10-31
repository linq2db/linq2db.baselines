-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`ReferenceConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Guarded` OR `r`.`Plain` IS NULL AND `r`.`Guarded` IS NULL

