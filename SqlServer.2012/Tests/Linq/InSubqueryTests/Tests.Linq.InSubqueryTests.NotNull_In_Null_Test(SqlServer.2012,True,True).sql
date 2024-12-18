BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NOT NULL)
	DROP TABLE [test_in_1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NULL)
	CREATE TABLE [test_in_1]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(1),
(3)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NULL)
	CREATE TABLE [test_in_2]
	(
		[ID] Int     NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(1),
(2),
(NULL)

BeforeExecute
-- SqlServer.2012

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID] AND [p].[ID] IS NOT NULL
	)

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[test_in_2]', N'U') IS NOT NULL)
	DROP TABLE [test_in_2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[test_in_1]', N'U') IS NOT NULL)
	DROP TABLE [test_in_1]

