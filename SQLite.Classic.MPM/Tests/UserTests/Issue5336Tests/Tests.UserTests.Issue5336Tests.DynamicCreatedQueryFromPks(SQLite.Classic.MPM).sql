-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'4BCAE7D2DB09464BB4BC137259BB9834'
DECLARE @Number  -- Int32
SET     @Number = 5
DECLARE @Test NVarChar(3) -- String
SET     @Test = 'aaa'

INSERT INTO [TestDtoWithPks]
(
	[Id],
	[Number],
	[Test]
)
VALUES
(
	@Id,
	@Number,
	@Test
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = X'4BCAE7D2DB09464BB4BC137259BB9834' AND
	[t1].[Number] = 5
LIMIT 1

