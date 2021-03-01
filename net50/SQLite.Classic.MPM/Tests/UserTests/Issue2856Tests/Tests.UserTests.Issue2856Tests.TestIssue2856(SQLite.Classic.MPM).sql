BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [GlobalTaskDTO]
(
	[Id]              Guid NOT NULL,
	[RPSourceID]      Guid     NULL,
	[RPDestinationID] Guid     NULL,

	CONSTRAINT [PK_GlobalTaskDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[gt1].[RPSourceID]
FROM
	[GlobalTaskDTO] [gt1]
WHERE
	[gt1].[RPSourceID] IN (Cast(x'5959cff3df06454bb98aeac91138c46f' as blob), Cast(x'2f7e6bdccf125b46a59a2f805bc742fc' as blob))
UNION
SELECT
	[gt2].[RPDestinationID]
FROM
	[GlobalTaskDTO] [gt2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [GlobalTaskDTO]

