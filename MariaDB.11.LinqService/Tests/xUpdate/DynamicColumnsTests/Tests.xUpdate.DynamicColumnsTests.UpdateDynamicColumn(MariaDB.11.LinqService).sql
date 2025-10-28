BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`Person` `c_1`
SET
	`c_1`.`FirstName` = 'Johnny'
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'Johnny' AND `c_1`.`LastName` = 'Limonadovy'

