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
					(X'32EBDEE3F7A32F4F8B5796833FE4D7E4','2024-01-26 10:04:31.231'),
					(X'26F8DDFAFA58EA4E9A74ED902CCB7D1C','2024-01-26 10:04:31.232'),
					(X'F49B2C02ACC36A4EA6EAF907EEC2581C','2024-01-26 10:04:31.232')
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
					(X'A134108898300045858F52B37D9C5F86','2024-01-26 10:04:31.232'),
					(X'159DEEA95E30314FA718D2B42394F02A','2024-01-26 10:04:31.232')
				) [x_1]
		WHERE
			[x_1].[Key] = [outfeed].[Id]
		LIMIT @take_1
	)
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

