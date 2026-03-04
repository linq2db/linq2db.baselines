-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c5f48e03-3d4e-4349-ace0-0b3d88a66ff1'
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
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'c5f48e03-3d4e-4349-ace0-0b3d88a66ff1'
DECLARE @Number Int -- Int32
SET     @Number = 5

SELECT TOP (1)
	[t1].[Id],
	[t1].[Number],
	[t1].[Test]
FROM
	[TestDtoWithPks] [t1]
WHERE
	[t1].[Id] = @Id AND [t1].[Number] = @Number

