BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TimeSpanAsTicks]', N'U') IS NOT NULL)
	DROP TABLE [TimeSpanAsTicks]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TimeSpanAsTicks]', N'U') IS NULL)
	CREATE TABLE [TimeSpanAsTicks]
	(
		[Id]    UniqueIdentifier NOT NULL,
		[Value] BigInt           NOT NULL,

		CONSTRAINT [PK_TimeSpanAsTicks] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[TimeSpanAsTicks] [r]
WHERE
	[r].[Value] = CAST(-1200000000 AS BIGINT)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TimeSpanAsTicks]', N'U') IS NOT NULL)
	DROP TABLE [TimeSpanAsTicks]

