BeforeExecute
-- MySqlConnector MySql
DECLARE @paramCopy Int32
SET     @paramCopy = 1
DECLARE @ID Int32
SET     @ID = 0
DECLARE @ID_1 Int32
SET     @ID_1 = 2

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
	) AND
	(`_`.`PersonID` IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			`p_1`.`PersonID` = @ID
	) OR `_`.`PersonID` IN (
		SELECT
			`p_2`.`PersonID`
		FROM
			`Person` `p_2`
		WHERE
			@ID_1 <> `p_2`.`PersonID`
	))

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 3
DECLARE @paramCopy Int32
SET     @paramCopy = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

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
			@ID <> `p`.`PersonID`
	) AND
	(`_`.`PersonID` IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			@paramCopy = `p_1`.`PersonID`
	) OR `_`.`PersonID` IN (
		SELECT
			`p_2`.`PersonID`
		FROM
			`Person` `p_2`
		WHERE
			@ID_1 <> `p_2`.`PersonID`
	))

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 4
DECLARE @ID_1 Int32
SET     @ID_1 = 2
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
			@ID <> `p`.`PersonID`
	) AND
	(`_`.`PersonID` IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			`p_1`.`PersonID` = @ID_1
	) OR `_`.`PersonID` IN (
		SELECT
			`p_2`.`PersonID`
		FROM
			`Person` `p_2`
		WHERE
			`p_2`.`PersonID` = @paramCopy
	))

BeforeExecute
-- MySqlConnector MySql
DECLARE @paramCopy Int32
SET     @paramCopy = 1
DECLARE @ID Int32
SET     @ID = 0
DECLARE @ID_1 Int32
SET     @ID_1 = 2

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
	) AND
	(`_`.`PersonID` IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			`p_1`.`PersonID` = @ID
	) OR `_`.`PersonID` IN (
		SELECT
			`p_2`.`PersonID`
		FROM
			`Person` `p_2`
		WHERE
			@ID_1 <> `p_2`.`PersonID`
	))

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 4
DECLARE @ID_1 Int32
SET     @ID_1 = 2
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
			@ID <> `p`.`PersonID`
	) AND
	(`_`.`PersonID` IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			`p_1`.`PersonID` = @ID_1
	) OR `_`.`PersonID` IN (
		SELECT
			`p_2`.`PersonID`
		FROM
			`Person` `p_2`
		WHERE
			`p_2`.`PersonID` = @paramCopy
	))

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 3
DECLARE @paramCopy Int32
SET     @paramCopy = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

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
			@ID <> `p`.`PersonID`
	) AND
	(`_`.`PersonID` IN (
		SELECT
			`p_1`.`PersonID`
		FROM
			`Person` `p_1`
		WHERE
			@paramCopy = `p_1`.`PersonID`
	) OR `_`.`PersonID` IN (
		SELECT
			`p_2`.`PersonID`
		FROM
			`Person` `p_2`
		WHERE
			@ID_1 <> `p_2`.`PersonID`
	))

