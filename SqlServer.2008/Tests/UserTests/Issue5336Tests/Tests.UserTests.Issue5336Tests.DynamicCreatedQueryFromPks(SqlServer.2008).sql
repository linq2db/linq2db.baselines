-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '4a238c4e-dce9-4187-bd01-c850badf962b'
DECLARE @Number Int -- Int32
SET     @Number = 5
DECLARE @Test NVarChar(4000) -- String
SET     @Test = N'aaa'

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

-- SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '4a238c4e-dce9-4187-bd01-c850badf962b' AND
	[t1].[Number] = 5

