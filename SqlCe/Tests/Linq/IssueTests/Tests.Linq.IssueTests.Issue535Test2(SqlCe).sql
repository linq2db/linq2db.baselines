BeforeExecute
-- SqlCe

DROP TABLE [CustomerBase]

BeforeExecute
-- SqlCe

CREATE TABLE [CustomerBase]
(
	[Id]           Int            NOT NULL IDENTITY,
	[ClientType]   NChar(6)       NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL,

	CONSTRAINT [PK_CustomerBase] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 NVarChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	Coalesce([q].[Enabled], 0) as [IsEnabled]
FROM
	[CustomerBase] [q]
WHERE
	([q].[Name] LIKE @filter ESCAPE '~' OR [q].[ContactEmail] LIKE @filter_1 ESCAPE '~') AND
	[q].[ClientType] = 'Client'

BeforeExecute
-- SqlCe

DROP TABLE [CustomerBase]

