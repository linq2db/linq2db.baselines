-- SqlServer.Contained SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7494c7da-1eab-45a7-b29c-a89a121550cb'
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
	[t1].[Id] = '7494c7da-1eab-45a7-b29c-a89a121550cb' AND
	[t1].[Number] = 5

