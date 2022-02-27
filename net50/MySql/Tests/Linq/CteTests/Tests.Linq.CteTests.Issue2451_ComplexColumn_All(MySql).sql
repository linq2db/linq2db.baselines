BeforeExecute
-- MySql MySql.Official MySql

WITH RECURSIVE `cte` (`FirstName`)
AS
(
	SELECT
		`p`.`FirstName`
	FROM
		`Person` `p`
	UNION ALL
	SELECT
		Concat(`r`.`FirstName`, '/', `r`.`LastName`)
	FROM
		`cte` `p_1`
			INNER JOIN `Person` `r` ON `p_1`.`FirstName` = `r`.`LastName`
)
SELECT
	`t1`.`FirstName`
FROM
	`cte` `t1`

