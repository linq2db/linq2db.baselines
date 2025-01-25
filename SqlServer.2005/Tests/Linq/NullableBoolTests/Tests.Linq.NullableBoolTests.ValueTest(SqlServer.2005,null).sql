BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NOT NULL)
	DROP TABLE [NullableBoolClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NullableBoolClass]
	(
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [NullableBoolClass]
(
	[Value]
)
SELECT NULL UNION ALL
SELECT 1 UNION ALL
SELECT 0

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NOT NULL)
	DROP TABLE [NullableBoolClass]

