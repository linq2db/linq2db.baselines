﻿BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MariaDB MySql

UPDATE
	`Person` `c_1`
SET
	`c_1`.`FirstName` = 'Johnny'
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'Johnny' AND `c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`LastName` = 'Limonadovy'

