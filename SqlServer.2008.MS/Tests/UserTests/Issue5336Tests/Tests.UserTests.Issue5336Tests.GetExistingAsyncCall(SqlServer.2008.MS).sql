-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd0833eaf-1bcb-4d2f-8916-1dda0dc32501'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd0833eaf-1bcb-4d2f-8916-1dda0dc32501'
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

