Parameters:
@p0='?' (DbType = Int16), @p1='?' (DbType = Int16)

INSERT INTO `Issue5388Task` (`IsArchived`)
VALUES (@p0);
SELECT `Id`
FROM `Issue5388Task`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `Issue5388Task` (`IsArchived`)
VALUES (@p1);
SELECT `Id`
FROM `Issue5388Task`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();


-- MySql.8.0.MySqlConnector MySql80
DECLARE @IsArchived Int16
SET     @IsArchived = 0

SELECT
	`t`.`Id`,
	`t`.`IsArchived`
FROM
	`Issue5388Task` `t`
WHERE
	`t`.`IsArchived` = @IsArchived



