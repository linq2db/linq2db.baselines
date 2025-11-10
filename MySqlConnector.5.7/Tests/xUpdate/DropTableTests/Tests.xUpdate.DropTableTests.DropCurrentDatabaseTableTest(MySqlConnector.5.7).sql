-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `DropTableTest`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_DropTableTest` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE `DropTableTest`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

