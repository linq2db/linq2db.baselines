﻿BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('Joh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('Joh', `p`.`FirstName`) <= 0) AND `p`.`PersonID` = 1

