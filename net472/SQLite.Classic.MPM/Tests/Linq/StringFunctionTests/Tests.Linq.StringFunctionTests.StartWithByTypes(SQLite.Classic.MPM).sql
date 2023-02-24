BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [StringTypesTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [StringTypesTable]
(
	[Id]             INTEGER      NOT NULL,
	[CharColumn]     Char(50)         NULL,
	[NCharColumn]    NChar(50)        NULL,
	[VarCharColumn]  VarChar(50)      NULL,
	[NVarCharColumn] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [StringTypesTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
VALUES
(1,'someString','someString','someString','someString')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @str_4 Char(5) -- AnsiStringFixedLength
SET     @str_4 = 'some%'
DECLARE @str_5 NChar(5) -- StringFixedLength
SET     @str_5 = 'some%'
DECLARE @str_6 VarChar(5) -- AnsiString
SET     @str_6 = 'some%'
DECLARE @str_7 NVarChar(5) -- String
SET     @str_7 = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str_4 ESCAPE '~' AND
	[t].[NCharColumn] LIKE @str_5 ESCAPE '~' AND
	[t].[VarCharColumn] LIKE @str_6 ESCAPE '~' AND
	[t].[NVarCharColumn] LIKE @str_7 ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [StringTypesTable]

