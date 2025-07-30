BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`a`.`Id`,
	`a`.`Date`
FROM
	`Issue4929Table` `a`
WHERE
	Extract(day from `a`.`Date`) = Extract(day from '2020-02-29') AND
	Extract(month from `a`.`Date`) = Extract(month from '2020-02-29')

