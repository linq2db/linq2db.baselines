BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NULL)
	CREATE TABLE [ComplexPredicate]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(1,NULL),
(2,N'other'),
(3,N'123'),
(4,N'test'),
(5,N'1')

BeforeExecute
-- SqlServer.2014

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = N'123' AND [r].[Value] IS NOT NULL, 1, 0) = IIF([r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL), 1, 0)
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

