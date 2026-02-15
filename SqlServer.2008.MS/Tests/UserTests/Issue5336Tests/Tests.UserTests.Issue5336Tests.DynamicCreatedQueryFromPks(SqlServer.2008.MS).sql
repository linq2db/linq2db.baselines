-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '696ed43d-2ae1-48fc-9950-77c7f162e29a'
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

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '696ed43d-2ae1-48fc-9950-77c7f162e29a' AND
	[t1].[Number] = 5

