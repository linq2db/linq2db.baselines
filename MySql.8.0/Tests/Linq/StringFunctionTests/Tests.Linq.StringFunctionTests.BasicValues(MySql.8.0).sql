-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`WhiteSpaceTextRow` `p`
WHERE
	`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`WhiteSpaceTextRow` `t1`

