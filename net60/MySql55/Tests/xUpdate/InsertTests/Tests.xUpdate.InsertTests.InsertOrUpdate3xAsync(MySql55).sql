﻿BeforeExecute
-- MySql55 MySql.Official MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `p`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = 'John' AND `p`.`LastName` = 'Shepard'

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

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
-- MySql55 MySql.Official MySql (asynchronously)

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
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
-- MySql55 MySql.Official MySql (asynchronously)
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
-- MySql55 MySql.Official MySql (asynchronously)
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
-- MySql55 MySql.Official MySql (asynchronously)
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
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE   `t1`
FROM
	`Patient` `t1`
WHERE
	`t1`.`PersonID` = @id

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

