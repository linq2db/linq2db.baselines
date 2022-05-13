﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'John',
	'The Dynamic',
	'M'
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'John' AND `c_1`.`LastName` = 'The Dynamic'

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`LastName` = 'The Dynamic'

