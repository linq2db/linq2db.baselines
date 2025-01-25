BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`c1`
FROM
	(
		SELECT
			COUNT(`rec`.`ID`) as `c1`
		FROM
			(
				SELECT
					`p`.`PersonID` as `ID`
				FROM
					`Person` `p`
				WHERE
					`p`.`PersonID` IN (1, 2)
			) `rec`
		WHERE
			`rec`.`ID` NOT IN (
				SELECT
					`p_1`.`PersonID`
				FROM
					`Person` `p_1`
				WHERE
					`p_1`.`PersonID` IN (3)
			)
	) `t1`
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`c1`
FROM
	(
		SELECT
			COUNT(`rec`.`ID`) as `c1`
		FROM
			(
				SELECT
					`p`.`PersonID` as `ID`
				FROM
					`Person` `p`
				WHERE
					`p`.`PersonID` IN (3)
			) `rec`
		WHERE
			`rec`.`ID` NOT IN (
				SELECT
					`p_1`.`PersonID`
				FROM
					`Person` `p_1`
				WHERE
					`p_1`.`PersonID` IN (1, 2)
			)
	) `t1`
LIMIT 2

