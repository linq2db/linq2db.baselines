﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat('*** p ***', '4'),
	'*** p ***',
	'*** `Parent` ***',
	'*** p_1.p ***'
FROM
	`Child` `c_1`
		INNER JOIN (
			SELECT
				`p`.`ParentID`
			FROM
				`Parent` `p`
		) `p_1` ON `c_1`.`ParentID` = `p_1`.`ParentID`
WHERE
	'*** p ***' = '*** `Parent` ***'

