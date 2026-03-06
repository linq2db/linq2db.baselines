-- SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'aebe1fa0-8fd1-4e2c-bd95-f12fe219cc04'
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

-- SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'aebe1fa0-8fd1-4e2c-bd95-f12fe219cc04' AND
	[t1].[Number] = 5

