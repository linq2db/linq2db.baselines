BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [NullableBool]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[NullableBool]', N'U') IS NULL)
	CREATE TABLE [NullableBool]
	(
		[ID]   Int NOT NULL,
		[Bool] Bit     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = 1 OR [r].[Bool] IS NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [NullableBool]

