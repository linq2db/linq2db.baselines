﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Issue4460Table`
(
	`Id`,
	`Code`,
	`Name`,
	`Surname`
)
VALUES
(1,'GrandChild','Tom','Black')

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Code`,
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Surname`
FROM
	`Issue4460Table` `t1`

