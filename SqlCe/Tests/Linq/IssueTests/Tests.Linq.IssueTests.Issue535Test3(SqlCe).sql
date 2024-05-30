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

SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	[cb].[Enabled]
FROM
	[CustomerBase] [cb]
WHERE
	[cb].[ClientType] = 'Client'

BeforeExecute
-- SqlCe

DROP TABLE [CustomerBase]

