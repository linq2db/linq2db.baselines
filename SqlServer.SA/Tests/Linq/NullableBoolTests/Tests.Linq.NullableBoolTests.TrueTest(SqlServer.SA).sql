BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NullableBoolClass]
	(
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0 OR [t].[Value] IS NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [NullableBoolClass]

