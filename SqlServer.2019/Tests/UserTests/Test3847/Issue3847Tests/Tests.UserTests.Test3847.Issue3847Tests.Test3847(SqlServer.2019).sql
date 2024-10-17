BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	IIF([t3].[c1] IS NOT NULL, [t3].[c1], @p),
	IIF([t3].[c2] IS NOT NULL, [t3].[c2], @p_1)
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)),
						('a948600d-de21-4f74-8ac2-9516b287076e',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)),
						('bd3973a5-4323-4dd8-9f4f-df9f93e2a627',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [c1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('76b1c875-2287-4b82-a23b-7967c5eafed8',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)),
						('656606a4-6e36-4431-add6-85f886a1c7c2',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [c2]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

