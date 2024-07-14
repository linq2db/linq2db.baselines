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
						(X'310E51B6284EB1428E427EC977F83769','2024-07-14 17:34:57.214'),
						(X'256BD1A9324AF14F9BAB1725BBC30947','2024-07-14 17:34:57.229'),
						(X'BAA6C1093CA370448FEFFEC54F730E7C','2024-07-14 17:34:57.229')
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
						(X'BEBBF46EBF447741972F39B32E715F26','2024-07-14 17:34:57.229'),
						(X'0B2A28FAF201504AB7B80ED4FF2E1A77','2024-07-14 17:34:57.229')
					) [t3]
		) [t4] ON [t4].[Key_1] = [outfeed].[Id] AND [t4].[rn] <= 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

