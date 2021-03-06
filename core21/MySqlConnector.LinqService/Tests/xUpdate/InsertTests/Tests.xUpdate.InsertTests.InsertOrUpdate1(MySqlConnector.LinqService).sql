﻿BeforeExecute
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
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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

