BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Issue3360NullInAnchor]
(
	[Id]    Int              NOT NULL,
	[Guid]  UniqueIdentifier     NULL,
	[Enum1] VarChar(50)          NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

WITH [cte] ([Id], [Enum1])
AS
(
	SELECT
		[p].[Id],
		Cast(NULL as NVarChar(Max))
	FROM
		[Issue3360NullInAnchor] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		Cast(N'THIS_IS_ONE' as NVarChar(Max))
	FROM
		[cte] [p_1]
			INNER JOIN [Issue3360NullInAnchor] [r] ON [p_1].[Id] = [r].[Id] + 100
)
SELECT
	[t1].[Id],
	[t1].[Enum1]
FROM
	[cte] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

