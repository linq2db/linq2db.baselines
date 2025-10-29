-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`MyEnum`,
	`p`.`MyEnum2`
FROM
	`TestIssue358Class` `p`
WHERE
	`p`.`MyEnum2` NOT IN (1)

