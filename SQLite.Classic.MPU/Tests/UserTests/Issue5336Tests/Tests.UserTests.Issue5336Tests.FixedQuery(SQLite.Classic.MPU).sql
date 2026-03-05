-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'87CD7EEDE3AC3346B9F0FAEA34182D7D'
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Guid
SET     @id = X'87CD7EEDE3AC3346B9F0FAEA34182D7D'
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

