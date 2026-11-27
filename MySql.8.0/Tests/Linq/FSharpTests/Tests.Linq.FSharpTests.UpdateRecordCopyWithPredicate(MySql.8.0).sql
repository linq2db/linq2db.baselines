-- MySql.8.0 MySql.8.0.MySql.Data MySql80
INSERT INTO `RecordSetterTable`
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
	`RecordSetterTable` `row_1`
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
	`RecordSetterTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

