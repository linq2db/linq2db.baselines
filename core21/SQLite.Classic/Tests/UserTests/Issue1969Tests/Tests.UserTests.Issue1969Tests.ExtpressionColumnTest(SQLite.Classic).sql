﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [CONFIG]
(
	[ID]   INTEGER       NOT NULL,
	[NAME] NVarChar(255)     NULL,

	CONSTRAINT [PK_CONFIG] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [CONFIG]
(
	[ID],
	[NAME]
)
VALUES
(1,'Some1'),
(2,'Some2')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [KOMPO]
(
	[TYP]    INTEGER NOT NULL,
	[NUMBER] INTEGER NOT NULL,

	CONSTRAINT [PK_KOMPO] PRIMARY KEY ([TYP])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t2].[ID],
	[t2].[NAME],
	[t2].[CountOf]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[KOMPO] [k_2]
				WHERE
					[k_2].[NUMBER] = [c_1].[ID]
			) as [ex],
			[c_1].[ID],
			[c_1].[NAME],
			[c_1].[CountOf]
		FROM
			[KOMPO] [k_3]
				INNER JOIN (
					SELECT
						[t1].[ID],
						[t1].[NAME],
						(
							SELECT
								Count(*)
							FROM
								[KOMPO] [k_1]
							WHERE
								[k_1].[NUMBER] = [t1].[ID]
						) as [CountOf]
					FROM
						[CONFIG] [t1]
				) [c_1] ON [c_1].[ID] = [k_3].[NUMBER]
	) [t2]
WHERE
	[t2].[ex] > 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [KOMPO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [CONFIG]

