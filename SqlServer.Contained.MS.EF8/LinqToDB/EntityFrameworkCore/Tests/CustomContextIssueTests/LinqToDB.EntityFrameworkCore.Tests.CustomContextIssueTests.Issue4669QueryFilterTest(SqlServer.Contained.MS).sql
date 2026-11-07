Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Boolean), @p2='?' (Size = 4000), @p3='?' (DbType = Int32), @p4='?' (DbType = Boolean), @p5='?' (Size = 4000)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [Items] ([Id], [IsDeleted], [Name])
VALUES (@p0, @p1, @p2),
(@p3, @p4, @p5);


-- SqlServer.2025
SELECT
	[p].[Id],
	[p].[Name]
FROM
	[Items] [p]
WHERE
	[p].[IsDeleted] = 0 AND [p].[Name] LIKE N'%Test%' ESCAPE N'~'
ORDER BY
	[p].[Name]



SELECT [i].[Id], [i].[IsDeleted], [i].[Name]
FROM [Items] AS [i]
WHERE [i].[IsDeleted] = CAST(0 AS bit) AND [i].[Name] LIKE N'Test%'


