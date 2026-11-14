-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	(
		SELECT
			MAX(`t1`.`item`)
		FROM
			(
				SELECT `p`.`PersonID` AS `item`
				UNION ALL
				SELECT 2) `t1`
	) = 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	(
		SELECT
			MIN(`t1`.`item`)
		FROM
			(
				SELECT `p`.`PersonID` AS `item`
				UNION ALL
				SELECT 2) `t1`
	) = 2

