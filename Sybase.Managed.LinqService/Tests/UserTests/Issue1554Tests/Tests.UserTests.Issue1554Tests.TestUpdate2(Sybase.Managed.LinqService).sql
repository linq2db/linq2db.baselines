BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1554Table') IS NOT NULL)
	DROP TABLE [Issue1554Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1554Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1554Table]
		(
			[Id]              Int         NOT NULL,
			[ClaimedKeyType]  NVarChar(3) NOT NULL,
			[ClaimedKeyTypeN] NVarChar(3)     NULL,

			CONSTRAINT [PK_Issue1554Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType UniVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN UniVarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

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
-- Sybase.Managed Sybase
DECLARE @ClaimedKeyType UniVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN UniVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	[Issue1554Table]
SET
	[ClaimedKeyType] = @ClaimedKeyType,
	[ClaimedKeyTypeN] = @ClaimedKeyTypeN
WHERE
	[Issue1554Table].[Id] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554Table] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1554Table') IS NOT NULL)
	DROP TABLE [Issue1554Table]

