BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NullableBoolClass]
	(
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Value Bit -- Boolean
SET     @Value = NULL

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Value Bit -- Boolean
SET     @Value = 1

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Value Bit -- Boolean
SET     @Value = 0

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [NullableBoolClass]

