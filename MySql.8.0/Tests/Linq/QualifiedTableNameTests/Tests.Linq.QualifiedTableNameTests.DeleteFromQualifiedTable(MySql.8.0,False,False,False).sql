-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`QualifiedNameTable`
WHERE
	`QualifiedNameTable`.`ID` = @ID

