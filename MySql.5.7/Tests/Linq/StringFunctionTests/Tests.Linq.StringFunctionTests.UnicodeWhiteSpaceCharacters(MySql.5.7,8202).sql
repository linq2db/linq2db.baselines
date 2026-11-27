-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`WhiteSpaceTextRow` `p`
WHERE
	NOT (`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]')

