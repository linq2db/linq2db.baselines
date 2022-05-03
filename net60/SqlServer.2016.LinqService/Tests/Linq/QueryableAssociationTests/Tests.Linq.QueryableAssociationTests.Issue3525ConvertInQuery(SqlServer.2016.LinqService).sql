BeforeExecute
-- SqlServer.2016

CREATE TABLE [PropertyHistory]
(
	[DocumentNo] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016

CREATE TABLE [CustomerApplication]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_CustomerApplication] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[i].[DocumentNo],
	[a_CustomerApplication].[Id]
FROM
	[PropertyHistory] [i]
		OUTER APPLY (
			SELECT TOP (@take)
				[a].[Id]
			FROM
				[CustomerApplication] [a]
			WHERE
				[a].[Id] = Convert(Int, [i].[DocumentNo])
		) [a_CustomerApplication]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CustomerApplication]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [PropertyHistory]

