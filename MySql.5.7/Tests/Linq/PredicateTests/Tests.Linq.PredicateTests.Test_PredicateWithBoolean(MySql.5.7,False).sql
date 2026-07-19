-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	((`r`.`Value5` = `r`.`Value4` OR `r`.`Value5` IS NULL AND `r`.`Value4` IS NULL) AND NOT (`r`.`Value5` IS NULL AND `r`.`Value4` IS NOT NULL OR `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NULL)) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value2`) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` > `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` > `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` >= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value2`) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` < `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` < `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) = @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	1 = 0

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value2`) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` <= `r`.`Value4` AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @True UByte -- Boolean
SET     @True = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @True

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @TrueN UByte -- Boolean
SET     @TrueN = 1

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @TrueN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @False UByte -- Boolean
SET     @False = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @False

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FalseN UByte -- Boolean
SET     @FalseN = 0

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value5` <= `r`.`Value4` AND `r`.`Value5` IS NOT NULL AND `r`.`Value4` IS NOT NULL) <> @FalseN

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

