--  SqlServer.2008 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[Id]
FROM
	(
		SELECT
			[p].[Id],
			ROW_NUMBER() OVER (ORDER BY [p].[Id]) as [RN]
		FROM
			[ShadowTable] [p]
		WHERE
			[p].[IsDeleted] = 0
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[Id]



--  SqlServer.2008 (asynchronously)

CREATE TABLE [tempdb]..[#ShadowTable]
(
	[Id] int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



--  SqlServer.2008 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#ShadowTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#ShadowTable]



