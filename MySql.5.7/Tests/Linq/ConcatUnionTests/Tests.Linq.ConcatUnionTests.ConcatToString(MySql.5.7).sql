﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @pattern VarChar(1) -- String
SET     @pattern = '1'
DECLARE @take Int32
SET     @take = 10

SELECT
	`t1`.`FirstName`
FROM
	(
		SELECT
			`p`.`FirstName`
		FROM
			`Person` `p`
		WHERE
			`p`.`FirstName` LIKE '1'
		UNION ALL
		SELECT
			`p_1`.`FirstName`
		FROM
			`Person` `p_1`
		WHERE
			LOCATE(@pattern, CAST(`p_1`.`PersonID` AS CHAR(255))) > 0
	) `t1`
LIMIT @take

