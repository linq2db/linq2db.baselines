BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
						('4804314c-518b-434b-82c6-04764d0f3503',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 403872, 7)),
						('86fe89cc-f765-4f4a-9aa9-392781217600',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 403890, 7)),
						('8e3e31b7-d2bf-4305-8058-02f039421d44',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 403903, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('e6c156d0-ed16-4d59-af8d-c5de9059eb48',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 403907, 7)),
						('a42ed05d-b3e7-4f3f-81c6-85e432628499',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 32, 403910, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

