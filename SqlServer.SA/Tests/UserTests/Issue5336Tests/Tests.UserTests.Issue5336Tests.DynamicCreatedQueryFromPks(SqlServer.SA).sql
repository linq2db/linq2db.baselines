-- SqlServer.SA SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'ab177536-8738-49fc-b3e3-022524422f1a'
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

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'ab177536-8738-49fc-b3e3-022524422f1a' AND
	[t1].[Number] = 5

