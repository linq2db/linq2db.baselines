-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 99
DECLARE @Data Binary(5)
SET     @Data = X'0102030405'
DECLARE @DataB Binary(6)
SET     @DataB = X'010203040506'

INSERT INTO [BinaryValuesTable]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Length([x].[Data])
FROM
	[BinaryValuesTable] [x]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Length([x].[Data])
FROM
	[BinaryValuesTable] [x]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Length([x].[DataB])
FROM
	[BinaryValuesTable] [x]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Length([x].[DataB])
FROM
	[BinaryValuesTable] [x]

