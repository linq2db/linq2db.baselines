﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`u`.`PersonID`,
	`x`.`PersonID`
FROM
	`Person` `u`
		INNER JOIN LATERAL (
			SELECT
				`l`.`PersonID`
			FROM
				(
					SELECT
						1 as `c1`
				) `r`
					LEFT JOIN `Patient` `l` ON `l`.`PersonID` = `u`.`PersonID`
		) `x` ON 1=1

