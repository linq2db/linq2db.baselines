Parameters:
@p0='?' (Size = 50)

INSERT INTO `Issue4662` (`Value`)
VALUES (@p0);
SELECT `Id`
FROM `Issue4662`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();


-- MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4662` `t1`



