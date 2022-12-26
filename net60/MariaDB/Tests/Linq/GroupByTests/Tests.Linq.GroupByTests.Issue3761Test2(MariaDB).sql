BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Issue3761Table`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3761Table`
(
	`LETO`     INT      NOT NULL,
	`STEVILKA` INT      NOT NULL,
	`DATUM`    DATETIME     NULL,
	`SKUPAJ`   DECIMAL      NULL,

	CONSTRAINT `PK_Issue3761Table` PRIMARY KEY CLUSTERED (`LETO`, `STEVILKA`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @_default DateTime
SET     @_default = '0001-01-01'
DECLARE @DATUM DateTime
SET     @DATUM = '2019-01-01'

SELECT
	Extract(year from Coalesce(`n`.`DATUM`, @_default)),
	Extract(month from Coalesce(`n`.`DATUM`, @_default)),
	Sum(`n`.`SKUPAJ`)
FROM
	`Issue3761Table` `n`
WHERE
	`n`.`DATUM` < @DATUM
GROUP BY
	Extract(year from Coalesce(`n`.`DATUM`, @_default)),
	Extract(month from Coalesce(`n`.`DATUM`, @_default))
UNION ALL
SELECT
	Extract(year from Coalesce(`n_1`.`DATUM`, @_default)),
	Extract(month from Coalesce(`n_1`.`DATUM`, @_default)),
	Sum(`n_1`.`SKUPAJ`)
FROM
	`Issue3761Table` `n_1`
WHERE
	`n_1`.`DATUM` >= @DATUM
GROUP BY
	Extract(year from Coalesce(`n_1`.`DATUM`, @_default)),
	Extract(month from Coalesce(`n_1`.`DATUM`, @_default))

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Issue3761Table`

