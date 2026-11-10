-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Blob -- Guid
SET     @Id = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Number Integer -- Int32
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
DECLARE @id Blob -- Guid
SET     @id = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @nr Integer -- Int32
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

