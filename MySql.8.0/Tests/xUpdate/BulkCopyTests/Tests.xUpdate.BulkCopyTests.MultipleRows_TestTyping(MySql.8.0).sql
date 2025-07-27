BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `MultipleRowsTable`
(
	`Id`,
	`DecimalValue1`,
	`DecimalValue2`
)
VALUES
(1,NULL,CAST(1 AS DECIMAL(1))),
(2,CAST(1.5 AS DECIMAL(2, 1)),CAST(-2.6 AS DECIMAL(2, 1)))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`DecimalValue1`,
	`t1`.`DecimalValue2`
FROM
	`MultipleRowsTable` `t1`
ORDER BY
	`t1`.`Id`

