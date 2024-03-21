BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `OptimizationData`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `OptimizationData`
(
	`Id`                  INT           NOT NULL,
	`IntVlaue`            INT           NOT NULL,
	`IntVlaueNullable`    INT               NULL,
	`BoolValue`           BOOLEAN       NOT NULL,
	`BoolValueNullable`   BOOLEAN           NULL,
	`StringValue`         VARCHAR(4000)     NULL,
	`StringValueNullable` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `OptimizationData`
(
	`Id`,
	`IntVlaue`,
	`IntVlaueNullable`,
	`BoolValue`,
	`BoolValueNullable`,
	`StringValue`,
	`StringValueNullable`
)
VALUES
(1,1,0,1,1,'1','1'),
(2,2,1,0,NULL,'0','0'),
(3,4,4,0,NULL,'1','1'),
(4,0,1,1,1,'0',NULL),
(5,1,3,1,1,'1',NULL),
(6,3,0,0,0,'0','0'),
(7,1,4,0,0,'1','1'),
(8,3,2,1,1,'0','0')

BeforeExecute
-- MySqlConnector MySql

/* x => x.IntVlaue == 1 ? 3 : 4 == 3 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`IntVlaue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.IntVlaue == 1 ? 3 : 4 == 3) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	`x_with_not`.`IntVlaue` <> 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => 3 == swap.IntVlaue == 1 ? 3 : 4 */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`IntVlaue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(3 == swap_with_not.IntVlaue == 1 ? 3 : 4) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	`swap_with_not`.`IntVlaue` <> 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.IntVlaue == 1 ? null : (bool?)False == (bool?)True */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	CASE
		WHEN `x`.`IntVlaue` = 1 THEN NULL
		ELSE 0
	END = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)False == (bool?)True) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	(CASE
		WHEN `x_with_not`.`IntVlaue` = 1 THEN NULL
		ELSE 0
	END = 0 OR CASE
		WHEN `x_with_not`.`IntVlaue` = 1 THEN NULL
		ELSE 0
	END IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)False */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	CASE
		WHEN `swap`.`IntVlaue` = 1 THEN NULL
		ELSE 0
	END = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)False) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	(CASE
		WHEN `swap_with_not`.`IntVlaue` = 1 THEN NULL
		ELSE 0
	END = 0 OR CASE
		WHEN `swap_with_not`.`IntVlaue` = 1 THEN NULL
		ELSE 0
	END IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.IntVlaue == 1 ? null : (bool?)True == (bool?)True */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`IntVlaue` <> 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)True == (bool?)True) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	`x_with_not`.`IntVlaue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)True */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`IntVlaue` <> 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)True) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	`swap_with_not`.`IntVlaue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.BoolValue ? True : False == True */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`BoolValue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.BoolValue ? True : False == True) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	`x_with_not`.`BoolValue` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => True == swap.BoolValue ? True : False */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`BoolValue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(True == swap_with_not.BoolValue ? True : False) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	`swap_with_not`.`BoolValue` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.BoolValue == True ? null : (bool?)True == (bool?)True */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`BoolValue` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.BoolValue == True ? null : (bool?)True == (bool?)True) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	`x_with_not`.`BoolValue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => (bool?)True == swap.BoolValue == True ? null : (bool?)True */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`BoolValue` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !((bool?)True == swap_with_not.BoolValue == True ? null : (bool?)True) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	`swap_with_not`.`BoolValue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.BoolValue == True ? True : False == True */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`BoolValue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.BoolValue == True ? True : False == True) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	`x_with_not`.`BoolValue` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => True == swap.BoolValue == True ? True : False */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`BoolValue` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(True == swap_with_not.BoolValue == True ? True : False) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	`swap_with_not`.`BoolValue` = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable == null ? 1 : x.StringValueNullable != null ? 2 : 3 == 2 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`StringValueNullable` IS NOT NULL AND `x`.`StringValueNullable` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable == null ? 1 : x_with_not.StringValueNullable != null ? 2 : 3 == 2) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	NOT (`x_with_not`.`StringValueNullable` IS NOT NULL AND `x_with_not`.`StringValueNullable` IS NOT NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => 2 == swap.StringValueNullable == null ? 1 : swap.StringValueNullable != null ? 2 : 3 */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`StringValueNullable` IS NOT NULL AND `swap`.`StringValueNullable` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(2 == swap_with_not.StringValueNullable == null ? 1 : swap_with_not.StringValueNullable != null ? 2 : 3) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	NOT (`swap_with_not`.`StringValueNullable` IS NOT NULL AND `swap_with_not`.`StringValueNullable` IS NOT NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 == 2 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	`x`.`StringValueNullable` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 == 2) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	`x_with_not`.`StringValueNullable` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => 2 == swap.StringValueNullable == null ? 2 : swap.StringValueNullable != null ? 1 : 3 */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	`swap`.`StringValueNullable` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(2 == swap_with_not.StringValueNullable == null ? 2 : swap_with_not.StringValueNullable != null ? 1 : 3) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	`swap_with_not`.`StringValueNullable` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 > 3 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	1 = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 > 3) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 >= 1 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 >= 1) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	1 = 0

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 > 1 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	(`x`.`StringValueNullable` IS NULL OR `x`.`StringValueNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 > 1) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	NOT (`x_with_not`.`StringValueNullable` IS NULL OR `x_with_not`.`StringValueNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable == null ? 1 : x.StringValueNullable != null ? 2 : 3 != 2 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	(`x`.`StringValueNullable` IS NULL OR `x`.`StringValueNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable == null ? 1 : x_with_not.StringValueNullable != null ? 2 : 3 != 2) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	NOT (`x_with_not`.`StringValueNullable` IS NULL OR `x_with_not`.`StringValueNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => 2 != swap.StringValueNullable == null ? 1 : swap.StringValueNullable != null ? 2 : 3 */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	(`swap`.`StringValueNullable` IS NULL OR `swap`.`StringValueNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(2 != swap_with_not.StringValueNullable == null ? 1 : swap_with_not.StringValueNullable != null ? 2 : 3) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	NOT (`swap_with_not`.`StringValueNullable` IS NULL OR `swap_with_not`.`StringValueNullable` IS NULL)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x => x.StringValueNullable != null ? x.StringValueNullable == "2" ? 2 : 10 : x.StringValueNullable == null ? 3 : 1 == 2 */
SELECT
	`x`.`Id`,
	`x`.`IntVlaue`,
	`x`.`IntVlaueNullable`,
	`x`.`BoolValue`,
	`x`.`BoolValueNullable`,
	`x`.`StringValue`,
	`x`.`StringValueNullable`
FROM
	`OptimizationData` `x`
WHERE
	CASE
		WHEN `x`.`StringValueNullable` IS NOT NULL THEN CASE
			WHEN `x`.`StringValueNullable` = '2' THEN 2
			ELSE 10
		END
		WHEN `x`.`StringValueNullable` IS NULL THEN 3
		ELSE 1
	END = 2

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* x_with_not => !(x_with_not.StringValueNullable != null ? x_with_not.StringValueNullable == "2" ? 2 : 10 : x_with_not.StringValueNullable == null ? 3 : 1 == 2) */
SELECT
	`x_with_not`.`Id`,
	`x_with_not`.`IntVlaue`,
	`x_with_not`.`IntVlaueNullable`,
	`x_with_not`.`BoolValue`,
	`x_with_not`.`BoolValueNullable`,
	`x_with_not`.`StringValue`,
	`x_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `x_with_not`
WHERE
	CASE
		WHEN `x_with_not`.`StringValueNullable` IS NOT NULL THEN CASE
			WHEN `x_with_not`.`StringValueNullable` = '2' THEN 2
			ELSE 10
		END
		WHEN `x_with_not`.`StringValueNullable` IS NULL THEN 3
		ELSE 1
	END <> 2

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap => 2 == swap.StringValueNullable != null ? swap.StringValueNullable == "2" ? 2 : 10 : swap.StringValueNullable == null ? 3 : 1 */
SELECT
	`swap`.`Id`,
	`swap`.`IntVlaue`,
	`swap`.`IntVlaueNullable`,
	`swap`.`BoolValue`,
	`swap`.`BoolValueNullable`,
	`swap`.`StringValue`,
	`swap`.`StringValueNullable`
FROM
	`OptimizationData` `swap`
WHERE
	2 = CASE
		WHEN `swap`.`StringValueNullable` IS NOT NULL THEN CASE
			WHEN `swap`.`StringValueNullable` = '2' THEN 2
			ELSE 10
		END
		WHEN `swap`.`StringValueNullable` IS NULL THEN 3
		ELSE 1
	END

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

/* swap_with_not => !(2 == swap_with_not.StringValueNullable != null ? swap_with_not.StringValueNullable == "2" ? 2 : 10 : swap_with_not.StringValueNullable == null ? 3 : 1) */
SELECT
	`swap_with_not`.`Id`,
	`swap_with_not`.`IntVlaue`,
	`swap_with_not`.`IntVlaueNullable`,
	`swap_with_not`.`BoolValue`,
	`swap_with_not`.`BoolValueNullable`,
	`swap_with_not`.`StringValue`,
	`swap_with_not`.`StringValueNullable`
FROM
	`OptimizationData` `swap_with_not`
WHERE
	2 <> CASE
		WHEN `swap_with_not`.`StringValueNullable` IS NOT NULL THEN CASE
			WHEN `swap_with_not`.`StringValueNullable` = '2' THEN 2
			ELSE 10
		END
		WHEN `swap_with_not`.`StringValueNullable` IS NULL THEN 3
		ELSE 1
	END

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`IntVlaue`,
	`t1`.`IntVlaueNullable`,
	`t1`.`BoolValue`,
	`t1`.`BoolValueNullable`,
	`t1`.`StringValue`,
	`t1`.`StringValueNullable`
FROM
	`OptimizationData` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `OptimizationData`

