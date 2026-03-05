-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '3bff9185-a4b1-45d1-a1ee-54a7c6c65b32'
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

-- SqlServer.2014

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '3bff9185-a4b1-45d1-a1ee-54a7c6c65b32' AND
	[t1].[Number] = 5

