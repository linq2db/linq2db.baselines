BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3847_OutfeedTransportOrder]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
						(X'196AD83B49BBAE46AF0D05BD61DCC9F6','2024-07-14 17:41:54.498'),
						(X'623C26926A68114AB58BAF48EBA95394','2024-07-14 17:41:54.498'),
						(X'D20AC047E726F343A4FAB5A0F2A8AEF1','2024-07-14 17:41:54.498')
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
						(X'3E4F4154131E3646B0A52F46DB16BB45','2024-07-14 17:41:54.498'),
						(X'2705853230B6F74A9E435FA7BB3E2D67','2024-07-14 17:41:54.498')
					) [t3]
		) [t4] ON [t4].[Key_1] = [outfeed].[Id] AND [t4].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

