BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [NotNullableBoolClass]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[NotNullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NotNullableBoolClass]
	(
		[Value] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Value Bit -- Boolean
SET     @Value = 1

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Value Bit -- Boolean
SET     @Value = 0

INSERT INTO [NotNullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [NotNullableBoolClass]

