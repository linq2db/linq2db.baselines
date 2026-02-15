-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '9aabc9fd-a79a-4591-a5ba-1b5392925c8e'
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
	[t1].[Id] = '9aabc9fd-a79a-4591-a5ba-1b5392925c8e' AND
	[t1].[Number] = 5

