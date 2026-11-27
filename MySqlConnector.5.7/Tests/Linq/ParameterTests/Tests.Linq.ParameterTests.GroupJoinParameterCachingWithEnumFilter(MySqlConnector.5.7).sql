-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @usage Int32
SET     @usage = 0

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @usage

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @usage Int32
SET     @usage = 1

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @usage

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @usage Int32
SET     @usage = 0

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @usage

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @usage Int32
SET     @usage = 1

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @usage

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

