﻿BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	1
FROM
	`Parent` `sep`

