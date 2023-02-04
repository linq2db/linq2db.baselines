BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NULL)
	CREATE TABLE [OutfeedTransportOrderDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
				(
					SELECT 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AS [Key], CAST('2020-02-29T17:54:55.000' AS DATETIME) AS [Value]) [x]
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(
					SELECT 'a948600d-de21-4f74-8ac2-9516b287076e' AS [Key], CAST('2020-02-29T17:54:55.000' AS DATETIME) AS [Value]) [x_1]
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

