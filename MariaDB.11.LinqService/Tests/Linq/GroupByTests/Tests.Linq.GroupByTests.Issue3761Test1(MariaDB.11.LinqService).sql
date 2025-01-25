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
DECLARE @DATUM Datetime -- DateTime
SET     @DATUM = '2019-01-01'

SELECT
	`t1`.`Year_1`,
	`t1`.`Month_1`,
	SUM(`t1`.`SKUPAJ`)
FROM
	(
		SELECT
			Extract(year from CASE
				WHEN `n`.`DATUM` IS NOT NULL THEN `n`.`DATUM`
				ELSE '0001-01-01'
			END) as `Year_1`,
			Extract(month from CASE
				WHEN `n`.`DATUM` IS NOT NULL THEN `n`.`DATUM`
				ELSE '0001-01-01'
			END) as `Month_1`,
			`n`.`SKUPAJ`
		FROM
			`Issue3761Table` `n`
		WHERE
			`n`.`DATUM` < @DATUM
	) `t1`
GROUP BY
	`t1`.`Year_1`,
	`t1`.`Month_1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

