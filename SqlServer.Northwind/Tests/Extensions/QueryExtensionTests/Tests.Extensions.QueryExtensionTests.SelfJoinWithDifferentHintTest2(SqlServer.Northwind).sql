BeforeExecute
-- SqlServer.Northwind SqlServer.2019

DROP TABLE IF EXISTS [Adress]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

IF (OBJECT_ID(N'[Adress]', N'U') IS NULL)
	CREATE TABLE [Adress]
	(
		[Id]       Int NOT NULL,
		[PersonId] Int NOT NULL,

		CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[p].[Id],
	[p].[PersonId]
FROM
	[Adress] [p] WITH (NOLOCK)
		INNER JOIN [Adress] [a] WITH (READUNCOMMITTED) ON [p].[Id] = [a].[Id]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

DROP TABLE IF EXISTS [Adress]

