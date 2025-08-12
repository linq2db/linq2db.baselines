BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Value1` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` = `r_1`.`Value4`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR
	`r_1`.`Value4` IS NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` <> `r_1`.`Value4`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR
	`r_1`.`Value4` IS NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` = `r_1`.`Value2`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` <> `r_1`.`Value2`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = (((`r_1`.`Value1` = `r_1`.`Value4`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR `r_1`.`Value4` IS NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)) AND NOT (`r_1`.`Value4` IS NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)) AND NOT (`r_1`.`Value4` IS NOT NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = (((`r_1`.`Value1` <> `r_1`.`Value4`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR `r_1`.`Value4` IS NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)) AND NOT (`r_1`.`Value4` IS NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)) AND NOT (`r_1`.`Value4` IS NOT NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value1` = `r_1`.`Value2`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value1` <> `r_1`.`Value2`) = (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` = `r_1`.`Value4`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR
	`r_1`.`Value4` IS NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL) OR
	`r_1`.`Value4` IS NOT NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` <> `r_1`.`Value4`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR
	`r_1`.`Value4` IS NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL) OR
	`r_1`.`Value4` IS NOT NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` = `r_1`.`Value2`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR
	`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value1` <> `r_1`.`Value2`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR
	`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = (((`r_1`.`Value1` = `r_1`.`Value4`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR `r_1`.`Value4` IS NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL) OR `r_1`.`Value4` IS NOT NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)) AND NOT (`r_1`.`Value4` IS NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = (((`r_1`.`Value1` <> `r_1`.`Value4`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR `r_1`.`Value4` IS NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL) OR `r_1`.`Value4` IS NOT NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)) AND NOT (`r_1`.`Value4` IS NULL AND (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value1` = `r_1`.`Value2`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR `t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value1` <> `r_1`.`Value2`) <> (`t1`.`COUNT_1` = (`r_1`.`Value5` + @cnt)) OR `t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value4` + @cnt) >= (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value4` + @cnt) > (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value4` + @cnt) <= (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value4` + @cnt) < (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value2` + @cnt) >= (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value2` + @cnt) > (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value2` + @cnt) <= (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	(`r_1`.`Value2` + @cnt) < (`t1`.`COUNT_1` + `r_1`.`Value5`)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value4` + @cnt) >= (`t1`.`COUNT_1` + `r_1`.`Value5`) AND `r_1`.`Value4` IS NOT NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value4` + @cnt) > (`t1`.`COUNT_1` + `r_1`.`Value5`) AND `r_1`.`Value4` IS NOT NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value4` + @cnt) <= (`t1`.`COUNT_1` + `r_1`.`Value5`) AND `r_1`.`Value4` IS NOT NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value4` + @cnt) < (`t1`.`COUNT_1` + `r_1`.`Value5`) AND `r_1`.`Value4` IS NOT NULL AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value2` + @cnt) >= (`t1`.`COUNT_1` + `r_1`.`Value5`) AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value2` + @cnt) > (`t1`.`COUNT_1` + `r_1`.`Value5`) AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value2` + @cnt) <= (`t1`.`COUNT_1` + `r_1`.`Value5`) AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @cnt Int32
SET     @cnt = 18

SELECT
	`r_1`.`Id`,
	`r_1`.`Value1`,
	`r_1`.`Value2`,
	`r_1`.`Value4`,
	`r_1`.`Value5`
FROM
	`BooleanTable` `r_1`
		LEFT JOIN (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				`BooleanTable` `r`
			WHERE
				`r`.`Value1` = 1
		) `t1` ON 1=1
WHERE
	((1=1)) = ((`r_1`.`Value2` + @cnt) < (`t1`.`COUNT_1` + `r_1`.`Value5`) AND NOT (`t1`.`COUNT_1` IS NULL OR `r_1`.`Value5` IS NULL))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

