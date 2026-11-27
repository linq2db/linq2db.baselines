-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`QualifiedNameTable`
WHERE
	`QualifiedNameTable`.`ID` = @ID

