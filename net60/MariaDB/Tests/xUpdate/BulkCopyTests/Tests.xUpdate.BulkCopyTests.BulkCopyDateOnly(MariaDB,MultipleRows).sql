BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DateOnlyTable`
(
	`Date` DATE NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
('2021-01-01')

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DateOnlyTable`

