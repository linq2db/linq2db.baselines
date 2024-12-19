BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestIdTrun`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE `TestIdTrun`
(
	`ID`     INT             AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL(29, 10)                NOT NULL,

	CONSTRAINT `PK_TestIdTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`TestIdTrun` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

TRUNCATE TABLE `TestIdTrun`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`TestIdTrun` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE `TestIdTrun`

