﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value4___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` IN (@In) OR `s`.`CEnum` IS NULL)
LIMIT 1

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)
LIMIT 1

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` NOT IN (@NotIn) AND `s`.`CEnum` IS NOT NULL)
LIMIT 1

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT
	`s`.`Id`
FROM
	`Src` `s`
WHERE
	(`s`.`CEnum` NOT IN (@NotIn, @NotIn_1) OR `s`.`CEnum` IS NULL)
LIMIT 1

