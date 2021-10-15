BeforeExecute
-- SqlServer.2012

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- SqlServer.2012
DECLARE @param Int -- Int32
SET     @param = NULL

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
			[_].[Id] = [__].[FK] AND [__].[Id] = @param
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEqualsTable2]', N'U') IS NOT NULL)
	DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[TestEqualsTable1]', N'U') IS NOT NULL)
	DROP TABLE [TestEqualsTable1]

