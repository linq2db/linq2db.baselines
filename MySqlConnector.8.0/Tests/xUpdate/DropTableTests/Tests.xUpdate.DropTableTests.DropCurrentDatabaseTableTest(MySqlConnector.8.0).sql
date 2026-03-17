-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DropTableTest`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_DropTableTest` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE `DropTableTest`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

