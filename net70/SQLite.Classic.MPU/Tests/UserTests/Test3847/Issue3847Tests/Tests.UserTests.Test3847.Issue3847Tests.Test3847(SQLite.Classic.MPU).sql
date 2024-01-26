BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3847_OutfeedTransportOrder]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
					(X'2F669DEE7A42974FBF2E3EBF717BC49A','2024-01-26 10:01:06.182'),
					(X'26BCCB6D551B7A47845A838B10F5CF76','2024-01-26 10:01:06.183'),
					(X'01803C18B07CF74F9F4853253005F5D1','2024-01-26 10:01:06.183')
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
					(X'AA3149EA2ED8994DAEB430ED65068BD4','2024-01-26 10:01:06.183'),
					(X'B14B9FFC04B9E5479FC2BC891E99B5D8','2024-01-26 10:01:06.183')
				) [x_1]
		WHERE
			[x_1].[Key] = [outfeed].[Id]
		LIMIT @take_1
	)
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

