﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_1`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `test_in_1`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(1),
(3)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `test_in_2`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(1),
(2)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`p`.`ID` IS NOT NULL AND `t`.`ID` = `p`.`ID`
	)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_1`

