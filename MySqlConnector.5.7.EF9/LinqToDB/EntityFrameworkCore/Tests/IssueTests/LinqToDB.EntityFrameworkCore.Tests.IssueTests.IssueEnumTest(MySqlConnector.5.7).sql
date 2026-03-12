Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p3='?' (DbType = Int32), @p4='?' (DbType = Int32)

INSERT INTO `IssueEnum` (`Value`)
VALUES (@p0);
SELECT `Id`
FROM `IssueEnum`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `IssueEnum` (`Value`)
VALUES (@p1);
SELECT `Id`
FROM `IssueEnum`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `IssueEnum` (`Value`)
VALUES (@p2);
SELECT `Id`
FROM `IssueEnum`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `IssueEnum` (`Value`)
VALUES (@p3);
SELECT `Id`
FROM `IssueEnum`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();

INSERT INTO `IssueEnum` (`Value`)
VALUES (@p4);
SELECT `Id`
FROM `IssueEnum`
WHERE ROW_COUNT() = 1 AND `Id` = LAST_INSERT_ID();


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IssueEnum` `t1`



