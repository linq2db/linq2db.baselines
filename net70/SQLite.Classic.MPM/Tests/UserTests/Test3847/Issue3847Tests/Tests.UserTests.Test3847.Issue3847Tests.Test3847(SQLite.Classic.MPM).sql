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
					(X'A04DE5874C2B114CA9141A4778CCB182','2024-01-26 10:01:06.221'),
					(X'3E0ECF33A2C8D64284075C91CE17AF3F','2024-01-26 10:01:06.221'),
					(X'C94BCD1B29050E448A14D745958D0269','2024-01-26 10:01:06.221')
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
					(X'76A586FA5541D0428B4BA4920FF04002','2024-01-26 10:01:06.221'),
					(X'DC6530585880484FAD2FCC6A9FA6A08A','2024-01-26 10:01:06.221')
				) [x_1]
		WHERE
			[x_1].[Key] = [outfeed].[Id]
		LIMIT @take_1
	)
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

