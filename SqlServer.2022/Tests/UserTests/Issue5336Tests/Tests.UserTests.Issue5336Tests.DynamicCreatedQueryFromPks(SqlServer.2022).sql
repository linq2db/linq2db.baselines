-- SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '89cf1378-997b-4ce7-87af-1d732c70c30c'
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

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = '89cf1378-997b-4ce7-87af-1d732c70c30c' AND
	[t1].[Number] = 5

