BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT             NOT NULL,
	`STEVILKA` INT             NOT NULL,
	`DATUM`    DATETIME            NULL,
	`SKUPAJ`   DECIMAL(29, 10)     NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
			`n`.`DATUM` < '2019-01-01' AND `n`.`DATUM` IS NOT NULL
	) `t1`
GROUP BY
	`t1`.`Year_1`,
	`t1`.`Month_1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3761Table`

