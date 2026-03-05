-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b5157b5f-792f-4949-8f28-ae61342c371f'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'b5157b5f-792f-4949-8f28-ae61342c371f'
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

