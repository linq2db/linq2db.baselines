BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	IIF([t3].[Value_1] IS NOT NULL, [t3].[Value_1], @p),
	IIF([t3].[Value_1_1] IS NOT NULL, [t3].[Value_1_1], @p_1)
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('bd5474aa-9221-4703-a1fa-94efc8ff1c4b',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 114427, 7)),
						('186c9c4b-92fa-4e96-8f70-ee2953f94832',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 123039, 7)),
						('5df20324-db3a-43e4-a4b2-a46deb7a5b89',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 123044, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('078739e0-1a19-46d5-8f96-0cba3c02e521',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 123046, 7)),
						('cac53395-2b03-4804-8d7f-56ec08863bde',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 123050, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

