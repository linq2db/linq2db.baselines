BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Test3847_OutfeedTransportOrder]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
						(X'1B7B7AD6A7C0484F9022A3AB7531969D','2024-07-14 17:34:57.260'),
						(X'99D5601992C02B489DFA60B2C00A538C','2024-07-14 17:34:57.260'),
						(X'9D4778EE9D908144995CFC7321D8C93C','2024-07-14 17:34:57.260')
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
						(X'C6904494CB981A4E85503CF2925163CC','2024-07-14 17:34:57.260'),
						(X'EA59C1694D0CCD49B9BDD44E3D588E55','2024-07-14 17:34:57.260')
					) [t3]
		) [t4] ON [t4].[Key_1] = [outfeed].[Id] AND [t4].[rn] <= 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

