BeforeExecute
-- MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'test',
	'subject',
	'U'
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

INSERT IGNORE INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'negative'
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

INSERT IGNORE INTO `Patient`
(
	`PersonID`,
	`Diagnosis`
)
VALUES
(
	@id,
	'positive'
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

DELETE `t1`
FROM
	`Patient` `t1`
WHERE
	`t1`.`PersonID` = @id

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

