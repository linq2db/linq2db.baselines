BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CAST(`c_1`.`Id` AS CHAR(11)),
	`c_1`.`Name`
FROM
	`Issue4654Customer` `c_1`
UNION
SELECT
	CAST(`o`.`Id` AS CHAR(11)),
	`o`.`ProductName`
FROM
	`Issue4654Order` `o`
UNION
SELECT
	CAST(`p`.`Id` AS CHAR(11)),
	`p`.`Name`
FROM
	`Issue4654Product` `p`

