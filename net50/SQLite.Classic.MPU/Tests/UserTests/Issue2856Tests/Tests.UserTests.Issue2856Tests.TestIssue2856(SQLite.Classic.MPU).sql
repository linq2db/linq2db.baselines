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
	[gt1].[RPSourceID] IN (Cast(x'fcfdcfde8059ab41b26b5a6caf0230fd' as blob), Cast(x'f3a433eef7cc9849bb79c1417462c310' as blob))
UNION
SELECT
	[gt2].[RPDestinationID]
FROM
	[GlobalTaskDTO] [gt2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [GlobalTaskDTO]

