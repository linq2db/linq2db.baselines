-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @elapsed Int64
SET     @elapsed = 42
DECLARE @maximum Int64
SET     @maximum = 10

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	`r`.`Id` <= 2 AND @elapsed NOT BETWEEN `r`.`Elapsed` AND @maximum
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @longer Int64
SET     @longer = 150
DECLARE @limit Int64
SET     @limit = 130

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@longer NOT BETWEEN `r`.`Elapsed` AND @limit
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @nullableValue VarChar(5) -- String
SET     @nullableValue = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@nullableValue BETWEEN @High AND `r`.`High`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @none Int64
SET     @none = NULL
DECLARE @limit Int64
SET     @limit = 130

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@none BETWEEN `r`.`Elapsed` AND @limit

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @none Int64
SET     @none = NULL
DECLARE @limit Int64
SET     @limit = 130

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Elapsed` AND @limit

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @none Int64
SET     @none = NULL
DECLARE @limit Int64
SET     @limit = 130

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Elapsed` AND @limit

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @elapsed Int64
SET     @elapsed = 42
DECLARE @minimum Int64
SET     @minimum = 10

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@elapsed BETWEEN @minimum AND `r`.`Elapsed`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @Low VarChar(5) -- String
SET     @Low = '00500'

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@value BETWEEN `r`.`Low` AND @Low
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@value BETWEEN @High AND `r`.`High`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @High VarChar(5) -- String
SET     @High = '00005'

SELECT
	`r`.`Id`
FROM
	`BetweenConvertedRow` `r`
WHERE
	@value NOT BETWEEN @High AND `r`.`High`
ORDER BY
	`r`.`Id`

