﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	`n`.`FirstName`,
	`n`.`PersonID`
FROM
	`Person` `t1`
		INNER JOIN (
			SELECT 'Janet' AS `FirstName`, @ID AS `PersonID`
			UNION ALL
			SELECT 'Doe', @ID_1) `n` ON `t1`.`PersonID` = `n`.`PersonID`
ORDER BY
	`n`.`PersonID`

