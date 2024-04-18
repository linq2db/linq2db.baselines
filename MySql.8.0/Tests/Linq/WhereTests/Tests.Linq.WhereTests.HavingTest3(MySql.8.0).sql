BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`
HAVING
	`t1`.`ParentID` > 1 AND Count(*) > 1 AND `t1`.`ParentID` > 1

