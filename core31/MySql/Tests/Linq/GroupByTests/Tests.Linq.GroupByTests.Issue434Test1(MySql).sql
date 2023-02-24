BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql MySql.Official MySql
DECLARE @input_2 VarChar(4) -- String
SET     @input_2 = 'test'

SELECT
	`p`.`PersonID`,
	`_gjd_ri`.`PersonID`,
	`_gjd_ri`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Patient` `_gjd_ri` ON `_gjd_ri`.`PersonID` = `p`.`PersonID`
WHERE
	LOCATE(@input_2, Lower(`p`.`FirstName`)) > 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql MySql.Official MySql
DECLARE @input_2 VarChar(4) -- String
SET     @input_2 = 'test'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	LOCATE(@input_2, Lower(`p`.`FirstName`)) > 0

