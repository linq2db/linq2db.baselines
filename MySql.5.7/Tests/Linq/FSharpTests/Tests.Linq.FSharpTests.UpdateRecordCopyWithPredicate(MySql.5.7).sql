-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
UPDATE
	`RecordSetterTable` `row_1`
SET
	`row_1`.`Text` = 'updated recently'
WHERE
	`row_1`.`Number` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Number`,
	`r`.`Text`
FROM
	`RecordSetterTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

