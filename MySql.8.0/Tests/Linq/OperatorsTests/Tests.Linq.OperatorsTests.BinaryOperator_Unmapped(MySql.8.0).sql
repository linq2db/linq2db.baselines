-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 2

SELECT
	`r`.`Id`,
	`r`.`Field`,
	`r`.`FieldN`,
	`r`.`FieldClass`
FROM
	`OperatorTable` `r`
WHERE
	`r`.`Field` = @value AND `r`.`FieldN` = @value AND
	`r`.`FieldClass` = @value

