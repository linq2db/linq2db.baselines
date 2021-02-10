BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = -1

UPDATE
	`Person` `_`
		LEFT JOIN (`Patient` `a_Patient`
			LEFT JOIN `Person` `a_Person` ON `a_Patient`.`PersonID` = `a_Person`.`PersonID`)
		ON `_`.`PersonID` = `a_Patient`.`PersonID`
SET
	`_`.`LastName` = 'test'
WHERE
	`_`.`PersonID` = @id

