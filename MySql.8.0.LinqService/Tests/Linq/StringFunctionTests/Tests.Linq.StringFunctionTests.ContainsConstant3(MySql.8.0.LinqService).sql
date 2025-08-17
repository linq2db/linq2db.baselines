BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IN ('oh', 'oh''', 'oh\\')

