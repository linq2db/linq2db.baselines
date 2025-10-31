-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @cond Int32
SET     @cond = 0

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @cond

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @cond Int32
SET     @cond = 1

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @cond

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @cond Int32
SET     @cond = 0

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @cond

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @cond Int32
SET     @cond = 1

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Usage`,
	`d`.`FirstTableId`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Table404One` `t1`
	) `m_1`
		INNER JOIN `Table404Two` `d` ON `m_1`.`Id` = `d`.`FirstTableId`
WHERE
	`d`.`Usage` = @cond

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Table404One` `t1`

