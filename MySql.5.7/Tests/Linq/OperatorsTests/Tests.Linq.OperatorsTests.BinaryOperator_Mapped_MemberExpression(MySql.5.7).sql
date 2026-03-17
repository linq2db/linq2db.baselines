-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 5

SELECT
	`r`.`Id`,
	`r`.`Field`,
	`r`.`FieldN`,
	`r`.`FieldClass`
FROM
	`OperatorTable` `r`
WHERE
	`r`.`Field` + 3 = @value AND
	`r`.`FieldN` IS NOT NULL AND
	`r`.`FieldN` + 3 = @value AND
	`r`.`FieldClass` + 3 = @value

