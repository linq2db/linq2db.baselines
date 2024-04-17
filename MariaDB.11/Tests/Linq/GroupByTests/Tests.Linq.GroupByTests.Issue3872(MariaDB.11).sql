BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Max(`selectParam`.`PersonID`)
FROM
	`Person` `selectParam`
UNION ALL
SELECT
	`r`.`PersonID`
FROM
	`Person` `r`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

