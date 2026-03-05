-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '39370e8e-2f34-4e39-8040-638d106c2e6e'
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

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '39370e8e-2f34-4e39-8040-638d106c2e6e' AND
	[t1].[Number] = 5

