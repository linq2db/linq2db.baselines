Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Guid)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [Issue5177] ([Id], [Value])
VALUES (@p0, @p1);


-- SqlServer.2017

SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[Issue5177] [r]
WHERE
	[r].[Value] IS NULL



