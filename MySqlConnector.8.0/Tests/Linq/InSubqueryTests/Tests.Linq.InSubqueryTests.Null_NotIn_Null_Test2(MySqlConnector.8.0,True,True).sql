BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `test_in_1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `test_in_1`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(1),
(3),
(4),
(5)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `test_in_2`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(1),
(2),
(4),
(6),
(NULL)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			(`t`.`ID` = `p`.`ID` OR `t`.`ID` IS NULL AND `p`.`ID` IS NULL)
	)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `test_in_1`

