﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `test_in_1`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `test_in_1`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(1),
(2),
(4)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `test_in_2`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`p`.`ID` = `t`.`ID`
	)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `test_in_1`

