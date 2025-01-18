BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Code`,
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Surname`
FROM
	`Issue4460Table` `t1`

