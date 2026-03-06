-- SqlServer.SA SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'dc9fb670-75c3-4eca-9af3-9af1c36d2192'
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

-- SqlServer.SA SqlServer.2019
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'dc9fb670-75c3-4eca-9af3-9af1c36d2192'
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

