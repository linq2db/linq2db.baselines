BeforeExecute
-- Access AccessOleDb

DROP TABLE [CustomerBase]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CustomerBase]
(
	[Id]           Int            NOT NULL IDENTITY,
	[ClientType]   NChar(6)       NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL,

	CONSTRAINT [PK_CustomerBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @filter_2 VarWChar(6) -- String
SET     @filter_2 = '%test%'
DECLARE @filter_3 VarWChar(6) -- String
SET     @filter_3 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	Iif([q].[Enabled] IS NULL, False, [q].[Enabled])
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE @filter_2 OR [q].[ContactEmail] LIKE @filter_3)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CustomerBase]

