BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `test_in_1`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `test_in_1`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(1),
(3),
(NULL)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `test_in_2`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(1),
(2),
(NULL)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `test_in_1`

