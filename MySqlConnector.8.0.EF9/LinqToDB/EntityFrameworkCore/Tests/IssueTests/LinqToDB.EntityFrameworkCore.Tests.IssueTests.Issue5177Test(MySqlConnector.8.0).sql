Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Guid)

SET AUTOCOMMIT = 1;
INSERT INTO `Issue5177` (`Id`, `Value`)
VALUES (@p0, @p1);


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`Issue5177` `r`
WHERE
	`r`.`Value` IS NULL
LIMIT 2



