-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'9FE8564FE403B94EAB9DC560D2C23D33'
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
	[t1].[Id] = X'9FE8564FE403B94EAB9DC560D2C23D33' AND
	[t1].[Number] = 5
LIMIT 1

