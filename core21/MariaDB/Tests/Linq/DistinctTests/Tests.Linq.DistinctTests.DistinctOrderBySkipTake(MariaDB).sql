BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DistinctOrderByTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DistinctOrderByTable`
(
	`Id` INT          NOT NULL,
	`F1` INT          NOT NULL,
	`F2` VARCHAR(255)     NULL,

	CONSTRAINT `PK_DistinctOrderByTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `DistinctOrderByTable`
(
	`Id`,
	`F1`,
	`F2`
)
VALUES
(8,8,'8'),
(3,3,'3'),
(2,2,'2'),
(6,3,'3'),
(1,3,'3'),
(5,5,'5'),
(7,2,'2'),
(4,4,'4')

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`_1`.`F2`
FROM
	(
		SELECT DISTINCT
			`_`.`F1`,
			`_`.`F2`
		FROM
			`DistinctOrderByTable` `_`
	) `_1`
ORDER BY
	`_1`.`F1` DESC
LIMIT @skip, @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DistinctOrderByTable`

