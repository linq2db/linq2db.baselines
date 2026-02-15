-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'862A11D8C9F1A44FAD9DC9302905CAEC'
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
DECLARE @id  -- Guid
SET     @id = X'862A11D8C9F1A44FAD9DC9302905CAEC'
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

