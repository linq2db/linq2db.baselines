-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @True Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TrueN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @False Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FalseN Bool -- Boolean
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

