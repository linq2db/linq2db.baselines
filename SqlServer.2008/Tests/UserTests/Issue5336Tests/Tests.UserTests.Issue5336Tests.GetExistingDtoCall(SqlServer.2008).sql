-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c6be3076-d290-4220-8c62-3895cc5c817a'
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

-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c6be3076-d290-4220-8c62-3895cc5c817a'
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

