-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'8BFA8AC7B3450D41B5900E9A508A4AA4'
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
SET     @Id = X'8BFA8AC7B3450D41B5900E9A508A4AA4'
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

