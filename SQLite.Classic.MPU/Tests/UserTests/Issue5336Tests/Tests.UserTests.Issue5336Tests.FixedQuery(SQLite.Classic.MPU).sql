-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'E8837092D3F36143BBF2776AB466D482'
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
SET     @id = X'E8837092D3F36143BBF2776AB466D482'
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

