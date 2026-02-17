-- SQLite.MS SQLite
DECLARE @Id  -- Guid
SET     @Id = X'D742F3A24B832F4BB3C49A3D4774B236'
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

-- SQLite.MS SQLite
DECLARE @id  -- Guid
SET     @id = X'D742F3A24B832F4BB3C49A3D4774B236'
DECLARE @nr  -- Int32
SET     @nr = 5

SELECT
	[x].[Id],
	[x].[Number],
	[x].[Test]
FROM
	[TestDtoWithPks] [x]
WHERE
	[x].[Id] = @id AND [x].[Number] = @nr
LIMIT 1

