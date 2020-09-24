BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CONFIG]
(
	[ID]   INTEGER       NOT NULL,
	[NAME] NVarChar(255)     NULL,

	CONSTRAINT [PK_CONFIG] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [CONFIG]
(
	[ID],
	[NAME]
)
VALUES
(1,'Some1'),
(2,'Some2')

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [KOMPO]
(
	[TYP]    INTEGER NOT NULL,
	[NUMBER] INTEGER NOT NULL,

	CONSTRAINT [PK_KOMPO] PRIMARY KEY ([TYP])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [KOMPO]
(
	[TYP],
	[NUMBER]
)
VALUES
(1,1),
(2,1),
(3,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[ID],
	[t2].[NAME],
	[t2].[cnt]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[KOMPO] [k_2]
				WHERE
					[k_2].[NUMBER] = [t1].[ID]
			) as [ex],
			[t1].[ID],
			[t1].[NAME],
			[t1].[cnt]
		FROM
			[KOMPO] [k_3]
				INNER JOIN (
					SELECT
						[c_1].[ID],
						[c_1].[NAME],
						(
							SELECT
								Count(*)
							FROM
								[KOMPO] [k_1]
							WHERE
								[k_1].[NUMBER] = [c_1].[ID]
						) as [cnt]
					FROM
						[CONFIG] [c_1]
				) [t1] ON [t1].[ID] = [k_3].[NUMBER]
	) [t2]
WHERE
	[t2].[ex] > 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [KOMPO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CONFIG]

