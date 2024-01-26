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
					(X'2DD3739B1C73CB489D395D8E8E3D4B91','2024-01-26 08:21:51.235'),
					(X'EAB508132E110741BB9FC5111FD31BEE','2024-01-26 08:21:51.235'),
					(X'3D7B6798594DB04DBC957E9946F72864','2024-01-26 08:21:51.235')
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
					(X'8C328E4A9233324EA60D12EFE539F2C1','2024-01-26 08:21:51.235'),
					(X'B792900C801DA447B8A886A690F1ED71','2024-01-26 08:21:51.235')
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

