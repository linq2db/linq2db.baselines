BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NULL)
	CREATE TABLE [OutfeedTransportOrderDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[outfeed].[Id],
	[t1].[LastCheck],
	[t2].[NextCheck]
FROM
	[OutfeedTransportOrderDTO] [outfeed]
		OUTER APPLY (
			SELECT TOP (@take)
				[x].[Value] as [LastCheck]
			FROM
				(VALUES
					('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('a948600d-de21-4f74-8ac2-9516b287076e',DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [OutfeedTransportOrderDTO]

