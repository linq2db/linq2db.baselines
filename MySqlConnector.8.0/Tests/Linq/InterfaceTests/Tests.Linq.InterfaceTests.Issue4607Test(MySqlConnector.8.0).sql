﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `SomeTable`
(
	`Id`,
	`ClassProp`,
	`Interface`
)
VALUES
(
	1,
	1,
	0
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ClassProp`,
	`t1`.`Interface`
FROM
	`SomeTable` `t1`
LIMIT 2

