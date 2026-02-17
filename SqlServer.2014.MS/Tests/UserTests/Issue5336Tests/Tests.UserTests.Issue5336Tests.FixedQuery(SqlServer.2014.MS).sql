-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '8a650b8f-28f1-4285-b2f5-6b8a0912d314'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '8a650b8f-28f1-4285-b2f5-6b8a0912d314'
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

