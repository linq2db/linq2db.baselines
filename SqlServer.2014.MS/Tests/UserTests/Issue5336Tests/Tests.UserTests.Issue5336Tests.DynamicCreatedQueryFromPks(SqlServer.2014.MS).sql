-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7e2edb20-218f-4de3-be45-354388a58a3b'
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

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '7e2edb20-218f-4de3-be45-354388a58a3b' AND
	[t1].[Number] = 5

