BeforeExecute
-- MariaDB MySql.Official MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName VarChar(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName VarChar(1) -- String
SET     @LastName = 'b'

INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(1) -- String
SET     @LastName = 'd'

INSERT INTO `Person`
(
	`Gender`,
	`FirstName`,
	`MiddleName`,
	`LastName`
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @id1 Int32
SET     @id1 = 5
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`MiddleName`,
	`_`.`LastName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = @id1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @id2 Int32
SET     @id2 = 6
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`MiddleName`,
	`_`.`LastName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = @id2
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

