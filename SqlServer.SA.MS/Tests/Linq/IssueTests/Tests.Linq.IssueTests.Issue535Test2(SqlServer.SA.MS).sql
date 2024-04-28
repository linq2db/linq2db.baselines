BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CustomerBase]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[CustomerBase]', N'U') IS NULL)
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @filter NVarChar(4000) -- String
SET     @filter = N'%test%'
DECLARE @filter_1 NVarChar(4000) -- String
SET     @filter_1 = N'%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	[q].[Enabled]
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = N'Client' AND ([q].[Name] LIKE @filter ESCAPE N'~' OR [q].[ContactEmail] LIKE @filter_1 ESCAPE N'~')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CustomerBase]

