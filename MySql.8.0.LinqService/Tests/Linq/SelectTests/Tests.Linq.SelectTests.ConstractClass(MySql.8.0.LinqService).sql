BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`f`.`ParentID`,
	Lower(CAST(`f`.`Value1` AS CHAR(11)))
FROM
	`Parent` `f`

