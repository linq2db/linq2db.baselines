BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [GlobalTaskDTO]
(
	[Id]              Guid NOT NULL,
	[RPSourceID]      Guid     NULL,
	[RPDestinationID] Guid     NULL,

	CONSTRAINT [PK_GlobalTaskDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[gt1].[RPSourceID]
FROM
	[GlobalTaskDTO] [gt1]
WHERE
	[gt1].[RPSourceID] IN (Cast(x'79b298905b5623449daa5bf9002bd0f2' as blob), Cast(x'59198a0bfa4a814db9b1b0bf7d4d5fb4' as blob))
UNION
SELECT
	[gt2].[RPDestinationID]
FROM
	[GlobalTaskDTO] [gt2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [GlobalTaskDTO]

