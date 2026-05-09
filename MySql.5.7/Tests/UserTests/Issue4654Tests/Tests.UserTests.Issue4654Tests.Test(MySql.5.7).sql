-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST(CAST(`c_1`.`Id` AS CHAR(11)) AS CHAR(255)),
	`c_1`.`Name`
FROM
	`Issue4654Customer` `c_1`
UNION
SELECT
	CAST(CAST(`o`.`Id` AS CHAR(11)) AS CHAR(255)),
	`o`.`ProductName`
FROM
	`Issue4654Order` `o`
UNION
SELECT
	CAST(CAST(`p`.`Id` AS CHAR(11)) AS CHAR(255)),
	`p`.`Name`
FROM
	`Issue4654Product` `p`

