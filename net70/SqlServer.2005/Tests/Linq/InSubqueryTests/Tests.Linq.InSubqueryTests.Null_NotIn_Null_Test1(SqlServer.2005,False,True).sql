﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NOT NULL)
	DROP TABLE [test_in_1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	CASE
		WHEN [t].[ID] IS NULL AND 1 IN (
			SELECT
				1
			FROM
				[test_in_2] [p]
			WHERE
				[p].[ID] IS NULL
		) OR [t].[ID] IS NOT NULL AND [t].[ID] IN (
			SELECT
				[p].[ID]
			FROM
				[test_in_2] [p]
		)
			THEN 1
		ELSE 0
	END = 0

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NOT NULL)
	DROP TABLE [test_in_1]

