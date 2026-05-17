-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

