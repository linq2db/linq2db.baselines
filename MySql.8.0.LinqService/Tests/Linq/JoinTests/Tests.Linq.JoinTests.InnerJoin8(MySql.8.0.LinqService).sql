﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ID`
FROM
	(
		SELECT
			`ch`.`ParentID` + `p`.`ParentID` as `ID`
		FROM
			`Child` `ch`
				INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
	) `t`
WHERE
	`t`.`ID` > 2

