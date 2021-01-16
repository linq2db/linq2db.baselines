BeforeExecute
-- MySql MySql.Official MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Gender String(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(12) -- String
SET     @FirstName = 'FirstName533'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(11) -- String
SET     @LastName = 'LastName533'

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
-- MySql MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

