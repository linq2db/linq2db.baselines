BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TestEqualsTable1]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TestEqualsTable1]', N'U') IS NULL)
	CREATE TABLE [TestEqualsTable1]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TestEqualsTable2]', N'U') IS NULL)
	CREATE TABLE [TestEqualsTable2]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	1 = 0

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TestEqualsTable1]

