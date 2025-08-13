BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Concat('1', `t1`.`FirstName` COLLATE utf8_bin, '2')
FROM
	`Person` `t1`

