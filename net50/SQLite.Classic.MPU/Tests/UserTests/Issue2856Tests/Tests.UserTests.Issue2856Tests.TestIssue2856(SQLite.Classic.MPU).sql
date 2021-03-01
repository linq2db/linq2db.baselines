BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [GlobalTaskDTO]
(
	[Id]              Guid NOT NULL,
	[RPSourceID]      Guid     NULL,
	[RPDestinationID] Guid     NULL,

	CONSTRAINT [PK_GlobalTaskDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[gt1].[RPSourceID]
FROM
	[GlobalTaskDTO] [gt1]
WHERE
	[gt1].[RPSourceID] IN (Cast(x'194f87cab191b74a8fd3f4a666a1eee5' as blob), Cast(x'eb9102d962b0634585fc8070c107c33c' as blob))
UNION
SELECT
	[gt2].[RPDestinationID]
FROM
	[GlobalTaskDTO] [gt2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [GlobalTaskDTO]

