SELECT CASE
    WHEN EXISTS (
        SELECT 1
        FROM [Parents] AS [p]) THEN CAST(1 AS bit)
    ELSE CAST(0 AS bit)
END


SELECT [p].[Id], [p].[ParentId]
FROM [Parents] AS [p]


--  SqlServer.2016

SELECT
	1
FROM
	(VALUES
		(NULL), (2)
	) [ua]([ParentId])
WHERE
	[ua].[ParentId] = 55377



