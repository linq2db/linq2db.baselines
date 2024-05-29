BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NotNullableBoolClass]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[NotNullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NotNullableBoolClass]
	(
		[Value] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
VALUES
(1),
(0)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NotNullableBoolClass]

