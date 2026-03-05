-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'f1af0f68-4142-4499-910c-c522a364bf97'
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

-- SqlServer.2012
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'f1af0f68-4142-4499-910c-c522a364bf97'
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

