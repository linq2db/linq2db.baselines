﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3761Table`

