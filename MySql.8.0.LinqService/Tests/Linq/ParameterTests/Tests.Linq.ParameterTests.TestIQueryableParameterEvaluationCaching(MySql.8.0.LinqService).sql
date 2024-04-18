BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @paramCopy Int32
SET     @paramCopy = 1

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IN (
		SELECT
			`p`.`PersonID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = @paramCopy
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @paramCopy Int32
SET     @paramCopy = 2

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IN (
		SELECT
			`p`.`PersonID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = @paramCopy
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @paramCopy Int32
SET     @paramCopy = 3

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IN (
		SELECT
			`p`.`PersonID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = @paramCopy
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @paramCopy Int32
SET     @paramCopy = 4

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IN (
		SELECT
			`p`.`PersonID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = @paramCopy
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @paramCopy Int32
SET     @paramCopy = 1

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` IN (
		SELECT
			`p`.`PersonID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = @paramCopy
	)

