Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

INSERT INTO `Issue4646Table` (`Value`, `ValueN`)
VALUES (@p0, @p1);
SELECT `Id`
FROM `Issue4646Table`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`ValueN`
FROM
	`Issue4646Table` `t1`
LIMIT 2



