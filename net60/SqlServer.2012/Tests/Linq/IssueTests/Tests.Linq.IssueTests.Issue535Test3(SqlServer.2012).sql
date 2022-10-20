﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[CustomerBase]', N'U') IS NOT NULL)
	DROP TABLE [CustomerBase]

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	Coalesce([cb].[Enabled], 0)
FROM
	[CustomerBase] [cb]
WHERE
	[cb].[ClientType] = N'Client'

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[CustomerBase]', N'U') IS NOT NULL)
	DROP TABLE [CustomerBase]

