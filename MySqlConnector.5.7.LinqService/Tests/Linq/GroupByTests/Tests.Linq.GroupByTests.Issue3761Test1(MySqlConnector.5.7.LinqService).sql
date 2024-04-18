﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @default Datetime -- DateTime
SET     @default = '0001-01-01'
DECLARE @DATUM Datetime -- DateTime
SET     @DATUM = '2019-01-01'

SELECT
	`t1`.`Key_1`,
	`t1`.`Key_2`,
	Sum(`t1`.`SKUPAJ`)
FROM
	(
		SELECT
			Extract(year from Coalesce(`n`.`DATUM`, @default)) as `Key_1`,
			Extract(month from Coalesce(`n`.`DATUM`, @default)) as `Key_2`,
			`n`.`SKUPAJ`
		FROM
			`Issue3761Table` `n`
		WHERE
			`n`.`DATUM` < @DATUM
	) `t1`
GROUP BY
	`t1`.`Key_1`,
	`t1`.`Key_2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue3761Table`

