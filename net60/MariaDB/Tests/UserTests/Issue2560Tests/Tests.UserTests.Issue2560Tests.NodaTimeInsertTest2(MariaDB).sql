BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DataClass`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DataClass`
(
	`Id`    INT      NOT NULL,
	`Value` DATETIME NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Value Datetime -- DateTime
SET     @Value = '2020-02-29 17:54:55.123'

INSERT INTO `DataClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`DataClass` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DataClass`

