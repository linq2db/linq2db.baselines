BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c2`.`ParentID`
FROM
	`Child` `c2`
GROUP BY
	`c2`.`ParentID`
ORDER BY
	`c2`.`ParentID`

