﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

/*(SELECT @n := 0) `rowcounter`*/
SELECT
	@n:=@n+1,
	`p`.`PersonID`
FROM
	`Person` `p`
, (SELECT @n := 0) `rowcounter`

