﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '012345')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (CHAR_LENGTH(Concat('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '012345'), 6, CHAR_LENGTH(Concat('123', `p`.`FirstName`, '012345')) - 5)))) - CHAR_LENGTH('123') = 7 AND
	Locate('123', Concat('123', `p`.`FirstName`, '012345'), 6) <> 0

