BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_1') IS NOT NULL)
	DROP TABLE [test_in_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_1') IS NULL)
	EXECUTE('
		CREATE TABLE [test_in_1]
		(
			[ID] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [test_in_1]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_2') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_2') IS NULL)
	EXECUTE('
		CREATE TABLE [test_in_2]
		(
			[ID] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [test_in_2]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 4 UNION ALL
SELECT 6 UNION ALL
SELECT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			([t].[ID] = [p].[ID] OR [t].[ID] IS NULL AND [p].[ID] IS NULL)
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_2') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_in_1') IS NOT NULL)
	DROP TABLE [test_in_1]

