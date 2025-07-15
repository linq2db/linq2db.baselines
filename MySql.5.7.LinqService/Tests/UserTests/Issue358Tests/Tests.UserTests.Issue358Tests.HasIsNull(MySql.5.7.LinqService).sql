BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`MyEnum`,
	`p`.`MyEnum2`
FROM
	`TestIssue358Class` `p`
WHERE
	`p`.`MyEnum` <> 0 OR `p`.`MyEnum` IS NULL

