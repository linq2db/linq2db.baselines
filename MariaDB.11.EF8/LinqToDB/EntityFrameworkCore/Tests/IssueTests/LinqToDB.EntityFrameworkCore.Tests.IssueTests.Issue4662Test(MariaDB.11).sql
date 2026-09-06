Parameters:
@p0='?' (Size = 50)

SET AUTOCOMMIT = 1;
INSERT INTO `Issue4662` (`Value`)
VALUES (@p0)
RETURNING `Id`;


-- MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4662` `t1`



