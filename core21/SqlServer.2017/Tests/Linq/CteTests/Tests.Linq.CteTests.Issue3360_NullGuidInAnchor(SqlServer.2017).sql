BeforeExecute
-- SqlServer.2017

CREATE TABLE [Issue3360NullInAnchor]
(
	[Id]    Int              NOT NULL,
	[Guid]  UniqueIdentifier     NULL,
	[Enum1] VarChar(50)          NULL
)

BeforeExecute
-- SqlServer.2017

WITH [cte] ([Id], [Guid])
AS
(
	SELECT
		[p].[Id],
		Cast(NULL as UniqueIdentifier)
	FROM
		[Issue3360NullInAnchor] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		Cast([r].[Guid] as UniqueIdentifier)
	FROM
		[cte] [p_1]
			INNER JOIN [Issue3360NullInAnchor] [r] ON [p_1].[Id] = [r].[Id] + 100
)
SELECT
	[t1].[Id],
	[t1].[Guid]
FROM
	[cte] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

