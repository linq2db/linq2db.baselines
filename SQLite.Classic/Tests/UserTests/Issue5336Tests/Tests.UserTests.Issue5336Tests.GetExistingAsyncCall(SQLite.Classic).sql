-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'EA41EA7698E4254AA32FE10ADA783DE0'
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
DECLARE @Id  -- Guid
SET     @Id = X'EA41EA7698E4254AA32FE10ADA783DE0'
DECLARE @Number  -- Int32
SET     @Number = 5

SELECT
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = @Id AND [t1].[Number] = @Number
LIMIT 1

