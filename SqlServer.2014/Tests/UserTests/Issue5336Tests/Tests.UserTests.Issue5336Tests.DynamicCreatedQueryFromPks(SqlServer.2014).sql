-- SqlServer.2014
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '7a2e15ce-060e-4611-9c4a-e7635a48a2a2'
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

-- SqlServer.2014

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '7a2e15ce-060e-4611-9c4a-e7635a48a2a2' AND
	[t1].[Number] = 5

