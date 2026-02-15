-- SQLite.MS SQLite
DECLARE @Id  -- Guid
SET     @Id = X'71A48B845390CE488B22E971EA33F8E8'
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
	[t1].[Id] = X'71A48B845390CE488B22E971EA33F8E8' AND
	[t1].[Number] = 5
LIMIT 1

