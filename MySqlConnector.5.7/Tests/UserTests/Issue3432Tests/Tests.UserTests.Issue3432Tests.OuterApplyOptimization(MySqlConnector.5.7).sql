﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`task_1`.`Description`,
	`party_1`.`Name`
FROM
	`Task` `task_1`
		LEFT JOIN `Party` `party_1` ON `task_1`.`AdminPartyId` = `party_1`.`Id` OR EXISTS(
			SELECT
				*
			FROM
				`PartyAccess` `pa`
			WHERE
				`pa`.`PartyId` = `party_1`.`Id` AND `pa`.`Role` = 'Admin'
		)

