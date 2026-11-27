-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	`UsageOwner` `m_1`
		INNER JOIN `EnumUsageDetail` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`
FROM
	`UsageOwner` `t1`

