BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Dto]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Dto]', N'U') IS NULL)
	CREATE TABLE [Dto]
	(
		[id]        Int            NOT NULL,
		[name]      NVarChar(4000)     NULL,
		[parent_id] Int                NULL,
		[FullName]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

WITH [d]
(
	[FullName],
	[id],
	[parent_id],
	[name]
)
AS
(
	SELECT
		[a].[name],
		[a].[id],
		[a].[parent_id],
		[a].[name]
	FROM
		[Dto] [a]
	WHERE
		[a].[parent_id] IS NULL
	UNION ALL
	SELECT
		[recur].[FullName] + N' > ' + [t1].[name],
		[t1].[id],
		[t1].[parent_id],
		[t1].[name]
	FROM
		[Dto] [t1]
			INNER JOIN [d] [recur] ON [recur].[id] = [t1].[parent_id]
)
SELECT
	[t2].[id],
	[t2].[parent_id],
	[t2].[name],
	[t2].[FullName]
FROM
	[d] [t2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Dto]

