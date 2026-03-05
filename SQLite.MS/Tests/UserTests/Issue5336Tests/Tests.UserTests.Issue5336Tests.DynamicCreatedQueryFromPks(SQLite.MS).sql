-- SQLite.MS SQLite
DECLARE @Id  -- Guid
SET     @Id = X'E2BED8909EF1CD4D9DEC10C9330A39F9'
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

SELECT
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = X'E2BED8909EF1CD4D9DEC10C9330A39F9' AND
	[t1].[Number] = 5
LIMIT 1

