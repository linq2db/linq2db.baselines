﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*) OVER(),
	`x`.`Key_1`,
	`x`.`Count_1`,
	`x`.`MAX_1`
FROM
	(
		SELECT
			`summary`.`LastName` as `Key_1`,
			COUNT(*) as `Count_1`,
			MAX(`summary`.`FirstName`) as `MAX_1`
		FROM
			`Person` `summary`
		GROUP BY
			`summary`.`LastName`
		HAVING
			COUNT(*) > 5
		LIMIT @skip, @take
	) `x`

