BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NOT NULL)
	DROP TABLE [test_in_1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [test_in_1]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL,
		[GV] Int     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [test_in_2]
(
	[ID],
	[GV]
)
SELECT 1,1 UNION ALL
SELECT 2,0 UNION ALL
SELECT NULL,NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MIN([g_1].[ID]) as [In_1]
				FROM
					[test_in_2] [g_1]
				GROUP BY
					[g_1].[GV]
			) [t1]
		WHERE
			[t].[ID] = [t1].[In_1] AND [t].[ID] IS NOT NULL AND [t1].[In_1] IS NOT NULL OR
			[t].[ID] IS NULL AND [t1].[In_1] IS NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NOT NULL)
	DROP TABLE [test_in_1]

