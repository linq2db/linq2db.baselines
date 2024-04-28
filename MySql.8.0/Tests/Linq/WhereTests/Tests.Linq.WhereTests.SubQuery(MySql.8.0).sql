BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(`t`.`ParentID` * 1000) / 1000
FROM
	`Child` `t`
WHERE
	`t`.`ParentID` * 1000 > 2000

