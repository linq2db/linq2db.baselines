BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	AVG(`_`.`ParentID`)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` < 0

