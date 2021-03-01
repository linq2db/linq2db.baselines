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
	[gt1].[RPSourceID] IN (Cast(x'f76b6c8c1bb2754cb790b668f46c3685' as blob), Cast(x'640de76c6d082a458640ede50d2ea2ba' as blob))
UNION
SELECT
	[gt2].[RPDestinationID]
FROM
	[GlobalTaskDTO] [gt2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [GlobalTaskDTO]

