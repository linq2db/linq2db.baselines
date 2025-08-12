BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @True Bool -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Boolean`,
	`r`.`BooleanN`,
	`r`.`Int32`,
	`r`.`Int32N`,
	`r`.`Decimal`,
	`r`.`DecimalN`,
	`r`.`Double`,
	`r`.`DoubleN`
FROM
	`BooleanTable` `r`
WHERE
	Coalesce(`r`.`BooleanN`, @True)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`,
	`t1`.`BooleanN`,
	`t1`.`Int32`,
	`t1`.`Int32N`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`,
	`t1`.`Double`,
	`t1`.`DoubleN`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @False Bool -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Boolean`,
	`r`.`BooleanN`,
	`r`.`Int32`,
	`r`.`Int32N`,
	`r`.`Decimal`,
	`r`.`DecimalN`,
	`r`.`Double`,
	`r`.`DoubleN`
FROM
	`BooleanTable` `r`
WHERE
	Coalesce(`r`.`BooleanN`, @False)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`,
	`t1`.`BooleanN`,
	`t1`.`Int32`,
	`t1`.`Int32N`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`,
	`t1`.`Double`,
	`t1`.`DoubleN`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Boolean`,
	`r`.`BooleanN`,
	`r`.`Int32`,
	`r`.`Int32N`,
	`r`.`Decimal`,
	`r`.`DecimalN`,
	`r`.`Double`,
	`r`.`DoubleN`
FROM
	`BooleanTable` `r`
WHERE
	Coalesce(`r`.`BooleanN`, `r`.`Id` % 2 = 1)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`,
	`t1`.`BooleanN`,
	`t1`.`Int32`,
	`t1`.`Int32N`,
	`t1`.`Decimal`,
	`t1`.`DecimalN`,
	`t1`.`Double`,
	`t1`.`DoubleN`
FROM
	`BooleanTable` `t1`

