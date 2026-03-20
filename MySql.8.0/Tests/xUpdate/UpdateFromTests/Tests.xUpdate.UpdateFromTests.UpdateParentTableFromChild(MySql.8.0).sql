-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`ParentTable` `a_Parent`,
	`ChildTable` `c_1`
SET
	`a_Parent`.`Value` = `a_Parent`.`Value` * 10
WHERE
	`a_Parent`.`Id` = 2 AND `c_1`.`ParentId` = `a_Parent`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`Id`,
	`p`.`Value`
FROM
	`ParentTable` `p`
WHERE
	`p`.`Id` = 2
LIMIT 1

