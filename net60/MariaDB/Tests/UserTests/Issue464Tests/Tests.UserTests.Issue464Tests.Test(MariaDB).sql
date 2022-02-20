BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `Issue464`
(
	`Id`    INT NOT NULL,
	`Value` INT     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Issue464`
(
	`Id`,
	`Value`
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue464` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE `Issue464`

