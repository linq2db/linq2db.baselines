BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ComplexPredicate') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ComplexPredicate') IS NULL)
	EXECUTE('
		CREATE TABLE [ComplexPredicate]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
SELECT 1,NULL UNION ALL
SELECT 2,'other' UNION ALL
SELECT 3,'123' UNION ALL
SELECT 4,'test' UNION ALL
SELECT 5,'1'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = '123' AND [r].[Value] IS NOT NULL THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = '1' AND [r].[Value] IS NOT NULL OR [r].[Value] = 'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ComplexPredicate') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

