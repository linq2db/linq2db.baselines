BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NullableBoolClass]
	(
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NULL

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] IS NOT NULL

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [NullableBoolClass]

