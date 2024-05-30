BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1554FluentTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue1554FluentTable]', N'U') IS NULL)
	CREATE TABLE [Issue1554FluentTable]
	(
		[Id]              Int         NOT NULL,
		[ClaimedKeyType]  NVarChar(3) NOT NULL,
		[ClaimedKeyTypeN] NVarChar(3)     NULL,

		CONSTRAINT [PK_Issue1554FluentTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = N'EC'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = NULL

INSERT INTO [Issue1554FluentTable]
(
	[Id],
	[ClaimedKeyType],
	[ClaimedKeyTypeN]
)
VALUES
(
	@Id,
	@ClaimedKeyType,
	@ClaimedKeyTypeN
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554FluentTable] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1554FluentTable]

