-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'cad21307-22c5-46c3-a97c-f5a8d47f5440'
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
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'cad21307-22c5-46c3-a97c-f5a8d47f5440'
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

