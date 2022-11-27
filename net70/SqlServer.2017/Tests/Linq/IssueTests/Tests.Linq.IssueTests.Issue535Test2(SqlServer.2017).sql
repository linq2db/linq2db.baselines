BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CustomerBase]

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017
DECLARE @filter_2 NVarChar(4000) -- String
SET     @filter_2 = N'%test%'
DECLARE @filter_3 NVarChar(4000) -- String
SET     @filter_3 = N'%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	Coalesce([q].[Enabled], 0)
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = N'Client' AND ([q].[Name] LIKE @filter_2 ESCAPE N'~' OR [q].[ContactEmail] LIKE @filter_3 ESCAPE N'~')

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CustomerBase]

