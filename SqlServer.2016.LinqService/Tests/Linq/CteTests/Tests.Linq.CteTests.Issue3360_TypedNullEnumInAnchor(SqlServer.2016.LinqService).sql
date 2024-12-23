BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue3360NullInAnchor]', N'U') IS NULL)
	CREATE TABLE [Issue3360NullInAnchor]
	(
		[Id]    Int              NOT NULL,
		[Guid]  UniqueIdentifier     NULL,
		[Enum1] VarChar(50)          NULL
	)

BeforeExecute
-- SqlServer.2016

WITH [cte] ([Id], [Value_1])
AS
(
	SELECT
		[p].[Id],
		CAST(NULL AS VARCHAR(10))
	FROM
		[Issue3360NullInAnchor] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		CAST(N'THIS_IS_ONE' AS VARCHAR(10))
	FROM
		[Issue3360NullInAnchor] [p_1]
)
SELECT
	[node].[Id],
	[node].[Value_1]
FROM
	[cte] [node]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue3360NullInAnchor]

