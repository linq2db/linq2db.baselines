BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InfeedAdvicePositionDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'F4E73A190953EE4EA74627B28C7E30F3'

INSERT INTO [InfeedAdvicePositionDTO]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(substr(hex([infeed].[Id]), 7, 2) || substr(hex([infeed].[Id]), 5, 2) || substr(hex([infeed].[Id]), 3, 2) || substr(hex([infeed].[Id]), 1, 2) || '-' || substr(hex([infeed].[Id]), 11, 2) || substr(hex([infeed].[Id]), 9, 2) || '-' || substr(hex([infeed].[Id]), 15, 2) || substr(hex([infeed].[Id]), 13, 2) || '-' || substr(hex([infeed].[Id]), 17, 4) || '-' || substr(hex([infeed].[Id]), 21, 12))
FROM
	[InfeedAdvicePositionDTO] [infeed]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	(substr(hex([infeed].[Id]), 7, 2) || substr(hex([infeed].[Id]), 5, 2) || substr(hex([infeed].[Id]), 3, 2) || substr(hex([infeed].[Id]), 1, 2) || '-' || substr(hex([infeed].[Id]), 11, 2) || substr(hex([infeed].[Id]), 9, 2) || '-' || substr(hex([infeed].[Id]), 15, 2) || substr(hex([infeed].[Id]), 13, 2) || '-' || substr(hex([infeed].[Id]), 17, 4) || '-' || substr(hex([infeed].[Id]), 21, 12)) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	(substr(hex([infeed].[Id]), 7, 2) || substr(hex([infeed].[Id]), 5, 2) || substr(hex([infeed].[Id]), 3, 2) || substr(hex([infeed].[Id]), 1, 2) || '-' || substr(hex([infeed].[Id]), 11, 2) || substr(hex([infeed].[Id]), 9, 2) || '-' || substr(hex([infeed].[Id]), 15, 2) || substr(hex([infeed].[Id]), 13, 2) || '-' || substr(hex([infeed].[Id]), 17, 4) || '-' || substr(hex([infeed].[Id]), 21, 12)) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	(substr(hex([infeed].[Id]), 7, 2) || substr(hex([infeed].[Id]), 5, 2) || substr(hex([infeed].[Id]), 3, 2) || substr(hex([infeed].[Id]), 1, 2) || '-' || substr(hex([infeed].[Id]), 11, 2) || substr(hex([infeed].[Id]), 9, 2) || '-' || substr(hex([infeed].[Id]), 15, 2) || substr(hex([infeed].[Id]), 13, 2) || '-' || substr(hex([infeed].[Id]), 17, 4) || '-' || substr(hex([infeed].[Id]), 21, 12)) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Lower((substr(hex([infeed].[Id]), 7, 2) || substr(hex([infeed].[Id]), 5, 2) || substr(hex([infeed].[Id]), 3, 2) || substr(hex([infeed].[Id]), 1, 2) || '-' || substr(hex([infeed].[Id]), 11, 2) || substr(hex([infeed].[Id]), 9, 2) || '-' || substr(hex([infeed].[Id]), 15, 2) || substr(hex([infeed].[Id]), 13, 2) || '-' || substr(hex([infeed].[Id]), 17, 4) || '-' || substr(hex([infeed].[Id]), 21, 12))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

