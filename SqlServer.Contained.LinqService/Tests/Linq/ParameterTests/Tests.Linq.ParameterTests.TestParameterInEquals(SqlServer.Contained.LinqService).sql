﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestEqualsTable1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TestEqualsTable1]', N'U') IS NULL)
	CREATE TABLE [TestEqualsTable1]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TestEqualsTable2]', N'U') IS NULL)
	CREATE TABLE [TestEqualsTable2]
	(
		[Id] Int NOT NULL,
		[FK] Int     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 0

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
			([__].[Id] = @param) AND ([_].[Id] = [__].[FK])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestEqualsTable2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestEqualsTable1]

