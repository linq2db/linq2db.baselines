-- SqlServer.Contained SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '259e8c9f-39df-4347-a3f5-f54c9985ed7d'
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

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '259e8c9f-39df-4347-a3f5-f54c9985ed7d' AND
	[t1].[Number] = 5

