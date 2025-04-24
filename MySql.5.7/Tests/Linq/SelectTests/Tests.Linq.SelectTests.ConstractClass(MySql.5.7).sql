BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`f`.`ParentID`,
	Lower(CAST(`f`.`Value1` AS CHAR(11)))
FROM
	`Parent` `f`

