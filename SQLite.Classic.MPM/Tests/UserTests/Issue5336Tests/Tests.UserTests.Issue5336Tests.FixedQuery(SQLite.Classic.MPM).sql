-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'4AE8441638A6D74A94E26E4DF310E01C'
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
DECLARE @id  -- Guid
SET     @id = X'4AE8441638A6D74A94E26E4DF310E01C'
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

