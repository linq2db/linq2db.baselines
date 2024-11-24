BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NOT NULL)
	DROP TABLE [NullableBoolClass]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NullableBoolClass]
	(
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value OR [t].[Value] IS NULL

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] <> @value

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NOT NULL)
	DROP TABLE [NullableBoolClass]

