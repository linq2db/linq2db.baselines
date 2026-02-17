-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7869b260-fc78-48fd-949e-b1e112d36526'
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

-- SqlServer.2012

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '7869b260-fc78-48fd-949e-b1e112d36526' AND
	[t1].[Number] = 5

