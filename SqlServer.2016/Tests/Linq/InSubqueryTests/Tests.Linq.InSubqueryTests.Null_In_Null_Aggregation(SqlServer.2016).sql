BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(1),
(3)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL,
		[GV] Int     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [test_in_2]
(
	[ID],
	[GV]
)
VALUES
(1,1),
(2,0),
(NULL,NULL)

BeforeExecute
-- SqlServer.2016

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
					MIN([g_1].[ID]) as [MIN_1]
				FROM
					[test_in_2] [g_1]
				GROUP BY
					[g_1].[GV]
			) [t1]
		WHERE
			([t].[ID] = [t1].[MIN_1] OR [t].[ID] IS NULL AND [t1].[MIN_1] IS NULL)
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [test_in_1]

