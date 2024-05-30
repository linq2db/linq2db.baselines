BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [GlobalTaskDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [GlobalTaskDTO]
(
	[Id]              Guid NOT NULL,
	[RPSourceID]      Guid     NULL,
	[RPDestinationID] Guid     NULL,

	CONSTRAINT [PK_GlobalTaskDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[gt1].[RPSourceID]
FROM
	[GlobalTaskDTO] [gt1]
WHERE
	[gt1].[RPSourceID] IN (X'3D667BBCDE0F27438F925D8CC3A11D11', X'0D6048A921DE744F8AC29516B287076E')
UNION
SELECT
	[gt2].[RPDestinationID]
FROM
	[GlobalTaskDTO] [gt2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [GlobalTaskDTO]

