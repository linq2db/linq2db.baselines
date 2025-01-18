BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	Length([x].[Data])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Length([x].[Data])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Length([x].[DataB])
FROM
	[Issue2691Table] [x]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Length([x].[DataB])
FROM
	[Issue2691Table] [x]

