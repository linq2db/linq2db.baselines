﻿BeforeExecute
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
	'test',
	'subject',
	'U'
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	`p`.`PersonID` = @id

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

DELETE   `t1`
FROM
	`Patient` `t1`
WHERE
	`t1`.`PersonID` = @id

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @id Int32
SET     @id = 5

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

