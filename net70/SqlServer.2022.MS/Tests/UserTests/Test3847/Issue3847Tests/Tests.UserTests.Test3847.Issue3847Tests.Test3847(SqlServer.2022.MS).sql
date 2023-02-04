BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3999_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Test3999_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3999_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[outfeed].[Id],
	[t1].[LastCheck],
	[t2].[NextCheck]
FROM
	[Test3999_OutfeedTransportOrder] [outfeed]
		OUTER APPLY (
			SELECT TOP (@take)
				[x].[Value] as [LastCheck]
			FROM
				(SELECT NULL [Key], NULL [Value] WHERE 1 = 0) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(SELECT NULL [Key], NULL [Value] WHERE 1 = 0) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3999_OutfeedTransportOrder]

