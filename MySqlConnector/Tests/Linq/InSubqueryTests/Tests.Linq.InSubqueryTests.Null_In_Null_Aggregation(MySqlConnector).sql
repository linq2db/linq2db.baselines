BeforeExecute
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
	`ID` INT     NULL,
	`GV` INT     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `test_in_2`
(
	`ID`,
	`GV`
)
VALUES
(1,1),
(2,0),
(NULL,NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					Min(`g_1`.`ID`) as `Min_1`
				FROM
					`test_in_2` `g_1`
				GROUP BY
					`g_1`.`GV`
			) `t1`
		WHERE
			(`t`.`ID` = `t1`.`Min_1` OR `t`.`ID` IS NULL AND `t1`.`Min_1` IS NULL)
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
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_1`

