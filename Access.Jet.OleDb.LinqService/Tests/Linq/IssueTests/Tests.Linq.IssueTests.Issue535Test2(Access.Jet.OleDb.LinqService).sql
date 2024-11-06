BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CustomerBase]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @filter VarWChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 VarWChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	[q].[Enabled]
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE @filter OR [q].[ContactEmail] LIKE @filter_1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CustomerBase]

