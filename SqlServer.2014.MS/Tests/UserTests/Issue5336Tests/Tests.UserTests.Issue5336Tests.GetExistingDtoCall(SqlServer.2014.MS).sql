-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a05b8b44-dc67-4921-8a28-9ffa90bc5e2a'
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
SET     @Id = 'a05b8b44-dc67-4921-8a28-9ffa90bc5e2a'
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

