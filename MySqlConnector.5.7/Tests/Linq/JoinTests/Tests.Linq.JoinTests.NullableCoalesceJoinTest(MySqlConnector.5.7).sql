-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `tmptbl1`
(
	`ID`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_tmptbl1` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `tmptbl1`
(
	`ID`,
	`Value`
)
VALUES
(1,'Value1'),
(2,NULL)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `tmptbl2`
(
	`ID`    INT           NOT NULL,
	`Value` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_tmptbl2` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `tmptbl2`
(
	`ID`,
	`Value`
)
VALUES
(1,'Value1'),
(3,'Value2')

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `tmptbl3`
(
	`ID`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_tmptbl3` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `tmptbl3`
(
	`ID`,
	`Value`
)
VALUES
(1,'Value1'),
(2,NULL)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t4`.`ID`,
	`t4`.`Value`
FROM
	`tmptbl1` `t2`
		LEFT JOIN `tmptbl2` `t3` ON `t2`.`ID` = `t3`.`ID`
		LEFT JOIN `tmptbl3` `t4` ON Coalesce(`t3`.`Value`, `t2`.`Value`) = `t4`.`Value` OR `t3`.`Value` IS NULL AND `t2`.`Value` IS NULL AND `t4`.`Value` IS NULL

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`tmptbl1` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`tmptbl2` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`tmptbl3` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `tmptbl3`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `tmptbl2`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `tmptbl1`

