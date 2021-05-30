BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DistinctOrderByTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DistinctOrderByTable`
(
	`Id` INT          NOT NULL,
	`F1` INT          NOT NULL,
	`F2` VARCHAR(255)     NULL,

	CONSTRAINT `PK_DistinctOrderByTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`F2`
FROM
	(
		SELECT DISTINCT
			`_`.`F1`,
			`_`.`F2`
		FROM
			`DistinctOrderByTable` `_`
		ORDER BY
			`_`.`F1` DESC
	) `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DistinctOrderByTable`

