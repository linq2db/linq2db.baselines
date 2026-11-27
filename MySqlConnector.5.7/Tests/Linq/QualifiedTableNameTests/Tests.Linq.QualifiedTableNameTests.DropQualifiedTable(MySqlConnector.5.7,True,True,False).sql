-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DROP TABLE IF EXISTS `QualifiedNameTable2`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
CREATE TABLE `QualifiedNameTable2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_QualifiedNameTable2` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DROP TABLE `testdataconnector`.`QualifiedNameTable2`

