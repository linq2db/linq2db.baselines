﻿BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql
DECLARE @take Int32
SET     @take = 1

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	Concat('Insert14', (
		SELECT
			`p`.`FirstName`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
		LIMIT @take
	)),
	'Shepard',
	'M'
)

BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Insert14%' ESCAPE '~'

