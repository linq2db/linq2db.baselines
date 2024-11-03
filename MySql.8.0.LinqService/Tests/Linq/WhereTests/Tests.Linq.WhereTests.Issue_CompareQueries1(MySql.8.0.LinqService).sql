BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`c1`
FROM
	(
		SELECT
			COUNT(`p`.`PersonID`) as `c1`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` IN (1, 2)
	) `t1`
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`c1`
FROM
	(
		SELECT
			COUNT(`p`.`PersonID`) as `c1`
		FROM
			`Person` `p`
		WHERE
			1 = 0
	) `t1`
LIMIT 2

