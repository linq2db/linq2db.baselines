BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestTempTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestTempTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	'value'
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TempTable`
(
	`Id`,
	`Value`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	'value 2'
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestTempTable`

