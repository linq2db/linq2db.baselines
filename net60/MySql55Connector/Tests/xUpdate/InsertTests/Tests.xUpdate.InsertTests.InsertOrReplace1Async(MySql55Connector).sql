BeforeExecute
-- MySql55Connector MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc1'

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc2'

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = @Diagnosis

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id
LIMIT @take

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE `p`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

