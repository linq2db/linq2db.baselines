-- YDB Ydb

SELECT
	user_1.Id as Id,
	user_1.FirstName as FirstName,
	user_1.Status as Status
FROM
	`User` user_1
WHERE
	user_1.Status IS NULL

