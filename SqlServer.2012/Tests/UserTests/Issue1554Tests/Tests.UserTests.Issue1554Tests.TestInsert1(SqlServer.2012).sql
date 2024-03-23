BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1554Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1554Table]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1554Table]', N'U') IS NULL)
	CREATE TABLE [Issue1554Table]
	(
		[Id]              Int         NOT NULL,
		[ClaimedKeyType]  NVarChar(3) NOT NULL,
		[ClaimedKeyTypeN] NVarChar(3)     NULL,

		CONSTRAINT [PK_Issue1554Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = N'EC'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = N'EC'

INSERT INTO [Issue1554Table]
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
-- SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554Table] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1554Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1554Table]

