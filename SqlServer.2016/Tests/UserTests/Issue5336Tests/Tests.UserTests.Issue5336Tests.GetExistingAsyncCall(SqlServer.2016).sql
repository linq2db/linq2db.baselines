-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '5a5e43f3-20aa-4718-9c59-eaf9fd20af6c'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '5a5e43f3-20aa-4718-9c59-eaf9fd20af6c'
DECLARE @Number Int -- Int32
SET     @Number = 5

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = @Id AND [t1].[Number] = @Number

