BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @default DateTime
SET     @default = '0001-01-01'
DECLARE @DATUM DateTime
SET     @DATUM = '2019-01-01'

SELECT
	`t1`.`Year_1`,
	`t1`.`Month_1`,
	Sum(`t1`.`SKUPAJ`)
FROM
	(
		SELECT
			Extract(year from Coalesce(`n`.`DATUM`, @default)) as `Year_1`,
			Extract(month from Coalesce(`n`.`DATUM`, @default)) as `Month_1`,
			`n`.`SKUPAJ`
		FROM
			`Issue3761Table` `n`
		WHERE
			`n`.`DATUM` < @DATUM
	) `t1`
GROUP BY
	`t1`.`Year_1`,
	`t1`.`Month_1`
UNION ALL
SELECT
	`t2`.`Year_1`,
	`t2`.`Month_1`,
	Sum(`t2`.`SKUPAJ`)
FROM
	(
		SELECT
			Extract(year from Coalesce(`n_1`.`DATUM`, @default)) as `Year_1`,
			Extract(month from Coalesce(`n_1`.`DATUM`, @default)) as `Month_1`,
			`n_1`.`SKUPAJ`
		FROM
			`Issue3761Table` `n_1`
		WHERE
			`n_1`.`DATUM` >= @DATUM
	) `t2`
GROUP BY
	`t2`.`Year_1`,
	`t2`.`Month_1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue3761Table`

