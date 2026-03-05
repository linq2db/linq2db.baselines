-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a4a7337a-5c5c-4398-a0c6-19ff0ca65230'
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

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'a4a7337a-5c5c-4398-a0c6-19ff0ca65230' AND
	[t1].[Number] = 5

