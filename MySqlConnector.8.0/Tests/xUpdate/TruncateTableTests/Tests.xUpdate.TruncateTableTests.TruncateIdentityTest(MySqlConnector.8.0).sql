-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TestIdTrun`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE `TestIdTrun`
(
	`ID`     INT             AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL(29, 10)                NOT NULL,

	CONSTRAINT `PK_TestIdTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

TRUNCATE TABLE `TestIdTrun`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE `TestIdTrun`

