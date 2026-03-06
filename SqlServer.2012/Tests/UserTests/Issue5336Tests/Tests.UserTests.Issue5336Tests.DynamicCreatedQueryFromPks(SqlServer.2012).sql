-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b39c133e-8abb-43ba-8c16-d148a84d0fc4'
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
	[t1].[Id] = 'b39c133e-8abb-43ba-8c16-d148a84d0fc4' AND
	[t1].[Number] = 5

