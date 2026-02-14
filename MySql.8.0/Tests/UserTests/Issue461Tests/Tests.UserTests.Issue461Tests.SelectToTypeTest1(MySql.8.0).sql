-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			`l`.`ParentID` + 1 as `Id`
		FROM
			`Child` `l`
		LIMIT 1
	)
FROM
	`Parent` `sep`

