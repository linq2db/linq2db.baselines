﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ValueItem`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ValueItem`
(
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `ValueItem`
(
	`Value`
)
VALUES
(
	123
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`row_1`.`Value`
FROM
	`ValueItem` `row_1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ValueItem`

