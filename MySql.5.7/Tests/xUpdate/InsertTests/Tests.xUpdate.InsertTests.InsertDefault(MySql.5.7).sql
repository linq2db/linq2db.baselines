BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Person`
(
	`FirstName`,
	`MiddleName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `t1`
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` = 'InsertDefault'

