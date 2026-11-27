-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`WhiteSpaceTextRow` `p`
WHERE
	NOT (`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]')

