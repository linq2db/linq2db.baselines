-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FirstName`,
	`LastName`,
	`Text`
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	CONCAT(Coalesce(`r`.`FirstName`, ''), ' ', Coalesce(`r`.`LastName`, ''))
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id` + 1,
	`r_1`.`Text`
FROM
	`Issue3323Table` `r_1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id` + 1,
	`r`.`Text`
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id`,
	CONCAT(Coalesce(`r_1`.`FirstName`, ''), ' ', Coalesce(`r_1`.`LastName`, ''))
FROM
	`Issue3323Table` `r_1`

