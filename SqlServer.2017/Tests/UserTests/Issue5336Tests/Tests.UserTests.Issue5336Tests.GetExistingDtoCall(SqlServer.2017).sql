-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '951e6b7a-aadd-4af6-86d9-66fdd996aeb2'
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

-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '951e6b7a-aadd-4af6-86d9-66fdd996aeb2'
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

