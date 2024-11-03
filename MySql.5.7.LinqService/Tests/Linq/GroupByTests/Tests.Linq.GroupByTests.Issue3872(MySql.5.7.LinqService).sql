BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT             NOT NULL,
	`STEVILKA` INT             NOT NULL,
	`DATUM`    DATETIME            NULL,
	`SKUPAJ`   DECIMAL(29, 10)     NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	MAX(`r`.`PersonID`),
	CAST('MAX' AS CHAR(255)),
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3761Table`

