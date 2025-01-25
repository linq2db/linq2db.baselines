BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	MAX(`r`.`PersonID`)
FROM
	`Person` `r`
UNION ALL
SELECT
	`r_1`.`PersonID`
FROM
	`Person` `r_1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3761Table`

