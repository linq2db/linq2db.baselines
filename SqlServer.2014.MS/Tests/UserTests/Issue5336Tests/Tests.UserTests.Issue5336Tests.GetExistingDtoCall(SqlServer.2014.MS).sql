-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '2a977754-24d7-43ad-818f-35998200092e'
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

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '2a977754-24d7-43ad-818f-35998200092e'
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

