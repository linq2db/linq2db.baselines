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
DECLARE @Date DateTime
SET     @Date = '2021-01-01'

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
(
	@Date
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DateOnlyTable`

