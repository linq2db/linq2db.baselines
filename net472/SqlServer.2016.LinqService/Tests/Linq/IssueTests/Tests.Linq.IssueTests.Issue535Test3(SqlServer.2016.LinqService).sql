BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [CustomerBase]
(
	[Id]           Int             NOT NULL IDENTITY,
	[ClientType]   NChar(6)        NOT NULL,
	[Name]         NVarChar(4000)      NULL,
	[ContactEmail] NVarChar(4000)      NULL,
	[Enabled]      Bit                 NULL,

	CONSTRAINT [PK_CustomerBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[cb].[Id], 
	[cb].[Name], 
	[cb].[ContactEmail], 
	IIF([cb].[Enabled] IS NULL, 0, [cb].[Enabled])
FROM
	[CustomerBase] [cb]
WHERE
	[cb].[ClientType] = N'Client'

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [CustomerBase]

