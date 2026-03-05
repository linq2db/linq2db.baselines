-- SqlServer.2008
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b5452117-40e2-4ebd-b40b-9f140489f702'
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

-- SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = 'b5452117-40e2-4ebd-b40b-9f140489f702' AND
	[t1].[Number] = 5

