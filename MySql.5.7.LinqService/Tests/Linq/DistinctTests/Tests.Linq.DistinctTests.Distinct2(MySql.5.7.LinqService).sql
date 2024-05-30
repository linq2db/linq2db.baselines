BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2)
FROM
	`Parent` `p`

