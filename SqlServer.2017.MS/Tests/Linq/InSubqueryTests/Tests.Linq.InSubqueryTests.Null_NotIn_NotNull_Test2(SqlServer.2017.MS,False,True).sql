BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(1),
(3)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	([t].[ID] IS NULL OR [t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	))

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [test_in_1]

