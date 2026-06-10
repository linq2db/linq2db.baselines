-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	NOT (`p`.`Text` IS NULL OR `p`.`Text` NOT RLIKE '[^	
                  　]')

