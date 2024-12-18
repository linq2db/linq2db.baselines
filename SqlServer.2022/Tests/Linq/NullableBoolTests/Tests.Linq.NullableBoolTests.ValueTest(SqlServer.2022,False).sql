BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[NullableBoolClass]', N'U') IS NULL)
	CREATE TABLE [NullableBoolClass]
	(
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- SqlServer.2022
DECLARE @value Bit -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	[t].[Value] = @value AND [t].[Value] IS NOT NULL

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [NullableBoolClass]

