BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT             NOT NULL,
	`STEVILKA` INT             NOT NULL,
	`DATUM`    DATETIME            NULL,
	`SKUPAJ`   DECIMAL(29, 10)     NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CAST('MAX' AS CHAR(255)),
	MAX(`r`.`PersonID`),
	NULL
FROM
	`Person` `r`
UNION ALL
SELECT
	NULL,
	NULL,
	`r_1`.`PersonID`
FROM
	`Person` `r_1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

