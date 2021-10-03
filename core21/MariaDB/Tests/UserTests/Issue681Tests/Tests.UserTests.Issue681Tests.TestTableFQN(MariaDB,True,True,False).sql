BeforeExecute
-- MariaDB MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`LinqDataTypes` `t1`

