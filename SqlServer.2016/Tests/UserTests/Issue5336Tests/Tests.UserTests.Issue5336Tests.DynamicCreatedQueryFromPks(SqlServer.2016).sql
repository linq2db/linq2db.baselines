-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '48d60442-6050-4a1a-a6ba-abb0d9ea5820'
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

-- SqlServer.2016

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '48d60442-6050-4a1a-a6ba-abb0d9ea5820' AND
	[t1].[Number] = 5

