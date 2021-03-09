BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = -1

UPDATE
	`Person` `t1`
		INNER JOIN `Patient` `a_Person` ON `a_Person`.`PersonID` = `t1`.`PersonID`
SET
	`t1`.`LastName` = 'test'
WHERE
	`a_Person`.`PersonID` = @id

