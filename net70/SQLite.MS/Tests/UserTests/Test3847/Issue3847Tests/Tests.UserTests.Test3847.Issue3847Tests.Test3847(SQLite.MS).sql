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
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @take_1  -- Int32
SET     @take_1 = 1

SELECT
	[outfeed].[Id],
	(
		SELECT
			[x].[Value]
		FROM
			(
				SELECT NULL [Key], NULL [Value] WHERE 1 = 0
				UNION ALL
				VALUES
					(X'36463C16B88AEE45999B9D66016FC8A5','2024-01-26 10:04:31.266'),
					(X'CEE4E2740529024EBC309D0BDCFAEE39','2024-01-26 10:04:31.266'),
					(X'0ED5F7AFFB5E6F44B463CD1C656272AB','2024-01-26 10:04:31.266')
				) [x]
		WHERE
			[x].[Key] = [outfeed].[Id]
		LIMIT @take
	),
	(
		SELECT
			[x_1].[Value]
		FROM
			(
				SELECT NULL [Key], NULL [Value] WHERE 1 = 0
				UNION ALL
				VALUES
					(X'F763A03A876D344D85E463E72B75ED5B','2024-01-26 10:04:31.266'),
					(X'7208A6DBAF77F84AA7D4BCEB05D07698','2024-01-26 10:04:31.266')
				) [x_1]
		WHERE
			[x_1].[Key] = [outfeed].[Id]
		LIMIT @take_1
	)
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

