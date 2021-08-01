BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Max(`t`.`PersonID`)
FROM
	`Person` `t`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 4

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` > @id

