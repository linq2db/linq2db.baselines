BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [O1]
(
	[DocEntry]    INTEGER       NOT NULL,
	[BplId]       INTEGER       NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [O2]
(
	[DocEntry]    INTEGER       NOT NULL,
	[BplId]       INTEGER       NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [O3]
(
	[DocEntry]    INTEGER       NOT NULL,
	[BplId]       INTEGER       NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[DocEntry],
	[t1].[c1],
	[t1].[c2]
FROM
	(
		SELECT
			[doSap].[DocEntry],
			CASE
				WHEN [doSap].[DocStatus] = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as [c1],
			'Manual/Externo' as [c2]
		FROM
			[O1] [doSap]
		UNION
		SELECT
			[doSap_1].[DocEntry],
			CASE
				WHEN [doSap_1].[DocStatus] = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as [c1],
			'Manual/Externo' as [c2]
		FROM
			[O2] [doSap_1]
	) [t1]
UNION
SELECT
	[doSap_2].[DocEntry],
	CASE
		WHEN [doSap_2].[DocStatus] = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END,
	'Manual/Externo'
FROM
	[O3] [doSap_2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [O3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [O2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [O1]

