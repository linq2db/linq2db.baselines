-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '9b7f1065-2fa2-48b5-bbe6-061a79cace75'
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

-- SqlServer.2014
DECLARE @id UniqueIdentifier -- Guid
SET     @id = '9b7f1065-2fa2-48b5-bbe6-061a79cace75'
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

