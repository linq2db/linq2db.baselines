BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`Date` DATE NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
('2021-01-01')

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DateOnlyTable`

