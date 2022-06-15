BeforeExecute
-- MariaDBConnector MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)

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
-- MariaDBConnector MySqlConnector MySql (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 0

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'abc'
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = Cast((Char_Length(`Diagnosis`) + @i) as CHAR(11))

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 1

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'abc'
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = Cast((Char_Length(`Diagnosis`) + @i) as CHAR(11))

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 2

INSERT INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'abc'
)
ON DUPLICATE KEY UPDATE
	`Diagnosis` = Cast((Char_Length(`Diagnosis`) + @i) as CHAR(11))

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id
LIMIT 2

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE   `t1`
FROM
	`Patient` `t1`
WHERE
	`t1`.`PersonID` = @id

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

