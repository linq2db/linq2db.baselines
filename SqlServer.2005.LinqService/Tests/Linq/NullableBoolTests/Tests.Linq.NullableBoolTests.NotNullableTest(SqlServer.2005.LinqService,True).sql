BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullableBoolClass]', N'U') IS NOT NULL)
	DROP TABLE [NotNullableBoolClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NotNullableBoolClass]
	(
		[Value] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 0

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Value]
FROM
	[NotNullableBoolClass] [t]
WHERE
	[t].[Value] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NotNullableBoolClass]', N'U') IS NOT NULL)
	DROP TABLE [NotNullableBoolClass]

