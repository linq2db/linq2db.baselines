Parameters:
@p0='?' (Size = 50)

SET NOCOUNT ON;
INSERT INTO [Issue4662] ([Value])
VALUES (@p0);
SELECT [Id]
FROM [Issue4662]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


-- SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4662] [t1]



