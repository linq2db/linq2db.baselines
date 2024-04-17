BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue681Table`

