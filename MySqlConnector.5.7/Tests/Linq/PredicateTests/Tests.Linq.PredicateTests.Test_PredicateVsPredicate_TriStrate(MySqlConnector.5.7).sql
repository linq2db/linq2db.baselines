﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) = (`r`.`Value4` = `r`.`Value5`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value5`) = (`r`.`Value4` = `r`.`Value2`) OR
	(`r`.`Value1` IS NULL OR `r`.`Value5` IS NULL) AND (`r`.`Value4` IS NULL OR `r`.`Value2` IS NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) <> (`r`.`Value4` = `r`.`Value5`) OR
	`r`.`Value4` IS NULL OR `r`.`Value5` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value5`) <> (`r`.`Value4` = `r`.`Value2`) OR
	(`r`.`Value1` IS NULL OR `r`.`Value5` IS NULL) AND NOT (`r`.`Value4` IS NULL OR `r`.`Value2` IS NULL) OR
	NOT (`r`.`Value1` IS NULL OR `r`.`Value5` IS NULL) AND (`r`.`Value4` IS NULL OR `r`.`Value2` IS NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) = (`r`.`Value2` = `r`.`Value1`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` = `r`.`Value2`) <> (`r`.`Value2` = `r`.`Value1`)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` = `r`.`Value5`) = (`r`.`Value5` = `r`.`Value4`) OR
	(`r`.`Value4` IS NULL OR `r`.`Value5` IS NULL) AND (`r`.`Value5` IS NULL OR `r`.`Value4` IS NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` = `r`.`Value5`) <> (`r`.`Value5` = `r`.`Value4`) OR
	(`r`.`Value4` IS NULL OR `r`.`Value5` IS NULL) AND NOT (`r`.`Value5` IS NULL OR `r`.`Value4` IS NULL) OR
	NOT (`r`.`Value4` IS NULL OR `r`.`Value5` IS NULL) AND (`r`.`Value5` IS NULL OR `r`.`Value4` IS NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) = ((`r`.`Value4` <> `r`.`Value5`))

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value5` AND `r`.`Value5` IS NOT NULL) = ((`r`.`Value4` <> `r`.`Value2`))

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) <> ((`r`.`Value4` <> `r`.`Value5`)) OR
	`r`.`Value4` IS NULL OR `r`.`Value5` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value5` AND `r`.`Value5` IS NOT NULL) <> ((`r`.`Value4` <> `r`.`Value2`)) OR
	`r`.`Value4` IS NULL OR `r`.`Value2` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) = ((`r`.`Value2` <> `r`.`Value1`))

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value1` >= `r`.`Value2`) <> ((`r`.`Value2` <> `r`.`Value1`))

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` >= `r`.`Value5` AND `r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NOT NULL) = ((`r`.`Value5` <> `r`.`Value4`))

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value1`,
	`r`.`Value2`,
	`r`.`Value4`,
	`r`.`Value5`
FROM
	`BooleanTable` `r`
WHERE
	(`r`.`Value4` >= `r`.`Value5` AND `r`.`Value4` IS NOT NULL AND `r`.`Value5` IS NOT NULL) <> ((`r`.`Value5` <> `r`.`Value4`)) OR
	`r`.`Value5` IS NULL OR `r`.`Value4` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value4`,
	`t1`.`Value5`
FROM
	`BooleanTable` `t1`

