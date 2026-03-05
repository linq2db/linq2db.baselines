-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'B687D0B53D6B6C459FC50C83D95173DD'
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

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = X'B687D0B53D6B6C459FC50C83D95173DD' AND
	[t1].[Number] = 5
LIMIT 1

