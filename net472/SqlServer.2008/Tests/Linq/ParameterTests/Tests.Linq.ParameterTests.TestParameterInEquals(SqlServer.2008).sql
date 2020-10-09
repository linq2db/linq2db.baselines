BeforeExecute
-- SqlServer.2008

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- SqlServer.2008

SELECT 
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[_].[Id] = [__].[FK] AND [__].[Id] IS NULL
	)

BeforeExecute
-- SqlServer.2008

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TestEqualsTable1]

