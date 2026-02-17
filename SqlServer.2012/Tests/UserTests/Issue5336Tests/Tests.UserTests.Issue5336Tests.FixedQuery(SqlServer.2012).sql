-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'd0b85e3e-2a5c-40ab-88d0-f9fd2d8668c4'
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
SET     @id = 'd0b85e3e-2a5c-40ab-88d0-f9fd2d8668c4'
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

