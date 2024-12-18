BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NULL)
	CREATE TABLE [ComplexPredicate]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
SELECT 1,NULL UNION ALL
SELECT 2,N'other' UNION ALL
SELECT 3,N'123' UNION ALL
SELECT 4,N'test' UNION ALL
SELECT 5,N'1'

BeforeExecute
-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = N'123' AND [r].[Value] IS NOT NULL THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

