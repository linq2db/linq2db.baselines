-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c89cea2d-8b6f-4fdc-bdd9-722a21ce01d8'
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

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'c89cea2d-8b6f-4fdc-bdd9-722a21ce01d8' AND
	[t1].[Number] = 5

