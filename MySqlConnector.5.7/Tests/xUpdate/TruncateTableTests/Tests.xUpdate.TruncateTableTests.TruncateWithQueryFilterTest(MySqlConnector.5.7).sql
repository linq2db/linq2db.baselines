-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestTrun`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestTrunDetail`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE `TestTrunDetail`
(
	`ID`         INT     NOT NULL,
	`TestTrunID` INT     NOT NULL,
	`IsActive`   BOOLEAN NOT NULL,

	CONSTRAINT `PK_TestTrunDetail` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE `TestTrun`
(
	`ID`     INT             NOT NULL,
	`Field1` DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

TRUNCATE TABLE `TestTrun`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE `TestTrun`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE `TestTrunDetail`

