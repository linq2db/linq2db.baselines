-- SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '2d1ec2a1-2216-4e35-843c-d529d5182edf'
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

-- SqlServer.2019
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '2d1ec2a1-2216-4e35-843c-d529d5182edf'
DECLARE @nr Int -- Int32
SET     @nr = 5

SELECT TOP (1)
	[x].[Id],
	[x].[Number],
	[x].[Test]
FROM
	[TestDtoWithPks] [x]
WHERE
	[x].[Id] = @id AND [x].[Number] = @nr

