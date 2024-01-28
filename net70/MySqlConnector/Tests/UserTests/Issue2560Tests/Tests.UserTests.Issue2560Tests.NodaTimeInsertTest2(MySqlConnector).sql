BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DataClass`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DataClass`
(
	`Id`    INT      NOT NULL,
	`Value` DATETIME NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Value Datetime -- DateTime
SET     @Value = '2020-02-29 17:54:55'

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
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`DataClass` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DataClass`

