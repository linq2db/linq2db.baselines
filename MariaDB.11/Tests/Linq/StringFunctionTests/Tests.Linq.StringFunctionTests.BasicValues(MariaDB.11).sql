-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`WhiteSpaceTextRow` `p`
WHERE
	`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`WhiteSpaceTextRow` `t1`

