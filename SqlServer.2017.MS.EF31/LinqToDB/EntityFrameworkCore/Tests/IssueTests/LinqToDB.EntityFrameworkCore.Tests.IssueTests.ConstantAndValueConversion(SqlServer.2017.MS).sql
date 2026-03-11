Parameters:
@p0='?' (DbType = Int16)

SET NOCOUNT ON;
INSERT INTO [Issue5388Task] ([IsArchived])
VALUES (@p0);
SELECT [Id]
FROM [Issue5388Task]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


Parameters:
@p0='?' (DbType = Int16)

SET NOCOUNT ON;
INSERT INTO [Issue5388Task] ([IsArchived])
VALUES (@p0);
SELECT [Id]
FROM [Issue5388Task]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


-- SqlServer.2017
DECLARE @IsArchived SmallInt -- Int16
SET     @IsArchived = 0

SELECT
	[t].[Id],
	[t].[IsArchived]
FROM
	[Issue5388Task] [t]
WHERE
	[t].[IsArchived] = @IsArchived



