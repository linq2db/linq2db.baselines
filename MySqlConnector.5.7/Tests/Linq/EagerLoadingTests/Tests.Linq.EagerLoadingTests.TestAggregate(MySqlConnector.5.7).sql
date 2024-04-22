BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `MasterClass`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `MasterClass`
(
	`Id1`        INT            NOT NULL,
	`Id2`        INT            NOT NULL,
	`Value`      VARCHAR(4000)      NULL,
	`ByteValues` VARBINARY(255)     NULL,

	CONSTRAINT `PK_MasterClass` PRIMARY KEY CLUSTERED (`Id1`, `Id2`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `MasterClass`
(
	`Id1`,
	`Id2`,
	`Value`,
	`ByteValues`
)
VALUES
(1,1,'Str1',NULL),
(2,2,'Str2',NULL),
(3,3,'Str3',NULL),
(4,4,'Str4',NULL),
(5,5,'Str5',NULL),
(6,6,'Str6',NULL),
(7,7,'Str7',NULL),
(8,8,'Str8',NULL),
(9,9,'Str9',NULL),
(10,10,'Str10',NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `DetailClass`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `DetailClass`
(
	`DetailId`    INT           NOT NULL,
	`MasterId`    INT               NULL,
	`DetailValue` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_DetailClass` PRIMARY KEY CLUSTERED (`DetailId`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `DetailClass`
(
	`DetailId`,
	`MasterId`,
	`DetailValue`
)
VALUES
(1001,1,'DetailValue10001'),
(3001,3,'DetailValue30001'),
(3002,3,'DetailValue30002'),
(3003,3,'DetailValue30003'),
(5001,5,'DetailValue50001'),
(5002,5,'DetailValue50002'),
(5003,5,'DetailValue50003'),
(5004,5,'DetailValue50004'),
(5005,5,'DetailValue50005'),
(7001,7,'DetailValue70001'),
(7002,7,'DetailValue70002'),
(7003,7,'DetailValue70003'),
(7004,7,'DetailValue70004'),
(7005,7,'DetailValue70005'),
(7006,7,'DetailValue70006'),
(7007,7,'DetailValue70007'),
(9001,9,'DetailValue90001'),
(9002,9,'DetailValue90002'),
(9003,9,'DetailValue90003'),
(9004,9,'DetailValue90004'),
(9005,9,'DetailValue90005'),
(9006,9,'DetailValue90006'),
(9007,9,'DetailValue90007'),
(9008,9,'DetailValue90008'),
(9009,9,'DetailValue90009')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_2`.`Id1`,
	`d_1`.`DetailId`
FROM
	(
		SELECT DISTINCT
			`m_1`.`Id1`
		FROM
			`MasterClass` `m_1`
	) `m_2`
		INNER JOIN (
			SELECT DISTINCT
				`d`.`DetailId`,
				`d`.`MasterId`
			FROM
				`DetailClass` `d`
		) `d_1` ON `m_2`.`Id1` = `d_1`.`MasterId`
ORDER BY
	`d_1`.`DetailId`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_2`.`Id1`,
	`d_1`.`DetailValue`
FROM
	(
		SELECT DISTINCT
			`m_1`.`Id1`
		FROM
			`MasterClass` `m_1`
	) `m_2`
		INNER JOIN (
			SELECT DISTINCT
				`d`.`DetailValue`,
				`d`.`MasterId`
			FROM
				`DetailClass` `d`
		) `d_1` ON `m_2`.`Id1` = `d_1`.`MasterId`
ORDER BY
	`d_1`.`DetailValue`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id1`
FROM
	`MasterClass` `m_1`

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id1`,
	`d`.`DetailId`,
	`d`.`MasterId`,
	`d`.`DetailValue`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id1`
		FROM
			`MasterClass` `t1`
	) `m_1`
		INNER JOIN `DetailClass` `d` ON `m_1`.`Id1` = `d`.`MasterId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id1`,
	`t1`.`Id2`,
	`t1`.`Value`,
	`t1`.`ByteValues`
FROM
	`MasterClass` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `DetailClass`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `MasterClass`

