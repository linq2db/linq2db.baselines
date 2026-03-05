-- SqlServer.2012
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'e00834db-f3c7-4c7f-bef6-4a8783ae9eba'
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
	[t1].[Id] = 'e00834db-f3c7-4c7f-bef6-4a8783ae9eba' AND
	[t1].[Number] = 5

