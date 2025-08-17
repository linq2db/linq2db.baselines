BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`a`.`Id`,
	`a`.`Date`
FROM
	`Issue4929Table` `a`
WHERE
	Extract(day from `a`.`Date`) = Extract(day from '2020-02-29') AND
	Extract(month from `a`.`Date`) = Extract(month from '2020-02-29')

