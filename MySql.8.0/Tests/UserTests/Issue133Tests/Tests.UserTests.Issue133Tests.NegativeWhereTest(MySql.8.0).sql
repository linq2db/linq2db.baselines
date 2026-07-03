-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	SUM(`t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`
HAVING
	SUM(`t1`.`ParentID`) <> 36

