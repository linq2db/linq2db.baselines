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
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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

