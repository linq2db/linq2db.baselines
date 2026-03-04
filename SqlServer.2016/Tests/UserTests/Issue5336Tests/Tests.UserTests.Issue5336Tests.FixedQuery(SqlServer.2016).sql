-- SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'fe445afd-629e-46f7-9757-b5a0d48b7b1d'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'fe445afd-629e-46f7-9757-b5a0d48b7b1d'
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

