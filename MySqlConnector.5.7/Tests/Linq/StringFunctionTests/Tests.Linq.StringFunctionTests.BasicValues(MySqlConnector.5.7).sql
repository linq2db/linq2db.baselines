-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`WhiteSpaceTextRow` `p`
WHERE
	`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`WhiteSpaceTextRow` `t1`

