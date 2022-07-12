BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `DataClass`
(
	`Id`    INT      NOT NULL,
	`Value` DATETIME NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Value_1 Datetime -- DateTime
SET     @Value_1 = '2020-02-29 17:54:55.123'

INSERT INTO `DataClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`DataClass` `t1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `DataClass`

