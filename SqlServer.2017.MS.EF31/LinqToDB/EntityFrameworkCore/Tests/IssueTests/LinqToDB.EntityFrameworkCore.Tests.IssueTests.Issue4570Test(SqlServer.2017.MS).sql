SELECT CASE
    WHEN EXISTS (
        SELECT 1
        FROM [Parents] AS [p]) THEN CAST(1 AS bit)
    ELSE CAST(0 AS bit)
END


--  SqlServer.2008

SELECT
	1
FROM
	[Parents] [ua]
WHERE
	[ua].[ParentId] = 55377



