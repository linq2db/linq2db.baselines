-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4132Table`
(
	`Id`,
	`Number`,
	`Text`
)
VALUES
(
	1,
	1,
	'before'
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Issue4132Table` `row_1`
SET
	`row_1`.`Text` = 'updated recently'
WHERE
	`row_1`.`Number` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Number`,
	`r`.`Text`
FROM
	`Issue4132Table` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

