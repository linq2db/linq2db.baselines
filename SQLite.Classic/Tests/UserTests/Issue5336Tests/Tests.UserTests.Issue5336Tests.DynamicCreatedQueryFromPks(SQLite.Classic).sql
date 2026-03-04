-- SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'62D87850651A1642B1CEFE28FFD88934'
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

SELECT
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = X'62D87850651A1642B1CEFE28FFD88934' AND
	[t1].[Number] = 5
LIMIT 1

