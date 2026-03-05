-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '8a681bd1-40c8-49d0-aadd-916380703d80'
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

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '8a681bd1-40c8-49d0-aadd-916380703d80' AND
	[t1].[Number] = 5

