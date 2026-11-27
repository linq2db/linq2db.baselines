-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DROP TABLE IF EXISTS `QualifiedNameTable2`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
CREATE TABLE `testdataconnector`.`QualifiedNameTable2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_QualifiedNameTable2` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DROP TABLE IF EXISTS `QualifiedNameTable2`

