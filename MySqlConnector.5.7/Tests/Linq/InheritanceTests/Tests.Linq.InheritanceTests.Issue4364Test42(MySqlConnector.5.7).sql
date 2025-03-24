﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Type`,
	`p`.`FullName`
FROM
	`Issue4364_BaseThing` `x`
		INNER JOIN `Issue4364_Interaction` `i` ON `x`.`Id` = `i`.`ThingId`
		INNER JOIN `Issue4364_Person` `p` ON `i`.`PersonId` = `p`.`Id`
WHERE
	`x`.`Type` = 101 OR `x`.`Type` = 102
ORDER BY
	`x`.`Id`

