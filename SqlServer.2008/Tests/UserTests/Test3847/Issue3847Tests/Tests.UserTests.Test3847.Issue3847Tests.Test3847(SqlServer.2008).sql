﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	CASE
		WHEN [t3].[Value_1] IS NOT NULL THEN [t3].[Value_1]
		ELSE @p
	END,
	CASE
		WHEN [t3].[Value_1_1] IS NOT NULL THEN [t3].[Value_1_1]
		ELSE @p_1
	END
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
						('a948600d-de21-4f74-8ac2-9516b287076e',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
						('bd3973a5-4323-4dd8-9f4f-df9f93e2a627',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('76b1c875-2287-4b82-a23b-7967c5eafed8',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)),
						('656606a4-6e36-4431-add6-85f886a1c7c2',CAST('2020-02-29T17:54:55.1231234' AS DATETIME2))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

