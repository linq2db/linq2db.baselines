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
					(X'4925A844013A4A48A0F1F69A4EE9C203','2024-01-26 08:21:51.203'),
					(X'0D8F555478C01D448D5CFBCD449D5441','2024-01-26 08:21:51.204'),
					(X'5E634F21756AEF42844A7D5A368A2D42','2024-01-26 08:21:51.204')
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
					(X'250F50F3FCA51C4891A2A8CB9A0A009C','2024-01-26 08:21:51.204'),
					(X'86E58B0D0311A342AD99D2AD19EDF4FB','2024-01-26 08:21:51.204')
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

