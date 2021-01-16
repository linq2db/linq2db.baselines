BeforeExecute
-- MySql55 MySql.Official MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 5

DELETE `t1`
FROM
	`Patient` `t1`
WHERE
	`t1`.`PersonID` = @id

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @id Int32
SET     @id = 5

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

