BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'擊敗奴隸',
	'Юникодкин',
	'M'
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = '擊敗奴隸' AND `p`.`LastName` = 'Юникодкин'
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > 4

