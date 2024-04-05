BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @p Datetime -- DateTime
SET     @p = '0001-01-01'
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
				WHEN `n`.`DATUM` IS NULL THEN @p
				ELSE `n`.`DATUM`
			END) as `Year_1`,
			Extract(month from CASE
				WHEN `n`.`DATUM` IS NULL THEN @p
				ELSE `n`.`DATUM`
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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3761Table`

