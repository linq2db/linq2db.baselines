BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

