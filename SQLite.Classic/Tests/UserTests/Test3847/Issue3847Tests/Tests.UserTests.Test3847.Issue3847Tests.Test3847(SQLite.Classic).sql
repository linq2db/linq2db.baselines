BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3847_OutfeedTransportOrder]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p  -- DateTime
SET     @p = NULL
DECLARE @p_1  -- DateTime
SET     @p_1 = NULL

SELECT
	[outfeed].[Id],
	CASE
		WHEN [t2].[Value_1] IS NOT NULL THEN [t2].[Value_1]
		ELSE @p
	END,
	CASE
		WHEN [t4].[Value_1] IS NOT NULL THEN [t4].[Value_1]
		ELSE @p_1
	END
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]
		LEFT JOIN (
			SELECT
				[t1].[Value] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [t1].[Key] ORDER BY [t1].[Key]) as [rn],
				[t1].[Key] as [Key_1]
			FROM
				(
					SELECT NULL [Key], NULL [Value] WHERE 1 = 0
					UNION ALL
					VALUES
						(X'2F60FFC32F88DA4199269B6270A85B47','2024-07-14 19:32:31.739'),
						(X'C1F7FC9B3FADFC4AB9E9950451D06447','2024-07-14 19:32:31.739'),
						(X'8376BFE108492F479552D7E6709C23C8','2024-07-14 19:32:31.739')
					) [t1]
		) [t2] ON [t2].[Key_1] = [outfeed].[Id] AND [t2].[rn] <= 1
		LEFT JOIN (
			SELECT
				[t3].[Value] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [t3].[Key] ORDER BY [t3].[Key]) as [rn],
				[t3].[Key] as [Key_1]
			FROM
				(
					SELECT NULL [Key], NULL [Value] WHERE 1 = 0
					UNION ALL
					VALUES
						(X'E473701DF93C5B4CA6412A42F6B27383','2024-07-14 19:32:31.739'),
						(X'F73AFFEE900A1345869F182ADF36C583','2024-07-14 19:32:31.739')
					) [t3]
		) [t4] ON [t4].[Key_1] = [outfeed].[Id] AND [t4].[rn] <= 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

