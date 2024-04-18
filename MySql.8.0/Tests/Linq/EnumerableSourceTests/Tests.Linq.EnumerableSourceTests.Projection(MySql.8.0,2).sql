﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	(
		SELECT 'Janet' AS `FirstName`, 3 AS `PersonID`, NULL AS `LastName`, NULL AS `MiddleName`, 'M' AS `Gender`
		UNION ALL
		SELECT 'Doe', 4, NULL, NULL, 'M') `t1`

