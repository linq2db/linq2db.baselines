-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`WhiteSpaceTextRow` `p`
WHERE
	NOT (`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]')

