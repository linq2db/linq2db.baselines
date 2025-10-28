BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`Issue2816Table` `t1`

