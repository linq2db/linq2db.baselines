BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Table2`
(
	`ID`
)
SELECT
	`t`.`ID`
FROM
	`Table1` `t`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Date`
FROM
	`Table2` `t1`

