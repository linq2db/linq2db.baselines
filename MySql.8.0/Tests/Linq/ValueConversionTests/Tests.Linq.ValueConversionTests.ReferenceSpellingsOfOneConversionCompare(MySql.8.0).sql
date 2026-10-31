-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`ReferenceConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Guarded` OR `r`.`Plain` IS NULL AND `r`.`Guarded` IS NULL

