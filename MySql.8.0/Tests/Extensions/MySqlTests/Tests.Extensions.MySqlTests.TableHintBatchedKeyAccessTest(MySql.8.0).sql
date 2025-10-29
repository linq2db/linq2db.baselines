-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ BKA(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

