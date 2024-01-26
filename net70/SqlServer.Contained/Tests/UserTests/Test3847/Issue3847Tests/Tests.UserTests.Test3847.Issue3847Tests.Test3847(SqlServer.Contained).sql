BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[outfeed].[Id],
	[t1].[LastCheck],
	[t2].[NextCheck]
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]
		OUTER APPLY (
			SELECT TOP (@take)
				[x].[Value] as [LastCheck]
			FROM
				(VALUES
					('ff9d2e6f-5b68-4a7d-ab45-b19197f8ba57',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 9464977, 7)),
					('c09a3b1c-6285-445f-99b6-be3b630d0b78',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 9465002, 7)),
					('ebba4fee-a108-41e9-9cae-4f62fc95e9d1',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 9465013, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('98f823d7-2e8a-4c71-85f5-311ef9edb0e1',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 9465023, 7)),
					('9a0982b6-7539-42d2-b0c7-e1e7bba8a86b',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 9465033, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

