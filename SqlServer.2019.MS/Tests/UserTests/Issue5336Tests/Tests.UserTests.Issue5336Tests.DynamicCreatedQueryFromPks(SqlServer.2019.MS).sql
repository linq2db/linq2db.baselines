-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6fa26770-b38a-4bf8-9bc6-e8b4fdf49a07'
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

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '6fa26770-b38a-4bf8-9bc6-e8b4fdf49a07' AND
	[t1].[Number] = 5

