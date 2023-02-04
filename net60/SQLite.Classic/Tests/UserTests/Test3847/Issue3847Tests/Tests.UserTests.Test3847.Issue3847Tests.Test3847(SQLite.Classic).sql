BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3999_OutfeedTransportOrder]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3999_OutfeedTransportOrder]
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
			(SELECT NULL [Key], NULL [Value] WHERE 1 = 0) [x]
		WHERE
			[x].[Key] = [outfeed].[Id]
		LIMIT @take
	),
	(
		SELECT
			[x_1].[Value]
		FROM
			(SELECT NULL [Key], NULL [Value] WHERE 1 = 0) [x_1]
		WHERE
			[x_1].[Key] = [outfeed].[Id]
		LIMIT @take_1
	)
FROM
	[Test3999_OutfeedTransportOrder] [outfeed]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3999_OutfeedTransportOrder]

