BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[_].[Id] = [__].[FK] AND [__].[Id] IS NULL
	))

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [TestEqualsTable1]

