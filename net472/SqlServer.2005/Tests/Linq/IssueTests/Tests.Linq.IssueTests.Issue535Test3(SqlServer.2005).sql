BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

DROP TABLE [CustomerBase]

