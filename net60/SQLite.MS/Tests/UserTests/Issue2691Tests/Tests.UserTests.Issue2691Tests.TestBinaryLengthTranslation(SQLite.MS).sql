BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2691Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2691Table]
(
	[Id]    INTEGER   NOT NULL,
	[Data]  VarBinary     NULL,
	[DataB] VarBinary     NULL,

	CONSTRAINT [PK_Issue2691Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 99
DECLARE @Data Binary(5)
SET     @Data = X'0102030405'
DECLARE @DataB Binary(6)
SET     @DataB = X'010203040506'

INSERT INTO [Issue2691Table]
(
	[Id],
	[Data],
	[DataB]
)
VALUES
(
	@Id,
	@Data,
	@DataB
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Length([x].[Data])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Length([x].[Data])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Length([x].[DataB])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Length([x].[DataB])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2691Table]

