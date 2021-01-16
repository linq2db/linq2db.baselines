BeforeExecute
-- MySqlConnector MySql

CREATE TEMPORARY TABLE `IsTemporaryTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IsTemporaryTable` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `IsTemporaryTable`

