-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'C0104E79652E18418F5F6A0C6C57DD1E'
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

SELECT
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = X'C0104E79652E18418F5F6A0C6C57DD1E' AND
	[t1].[Number] = 5
LIMIT 1

