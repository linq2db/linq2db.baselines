-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 42

INSERT INTO [OptionNullableElemTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value Int -- Int32
SET     @Value = NULL

INSERT INTO [OptionNullableElemTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[OptionNullableElemTable] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[r].[Id],
	[r].[Value]
FROM
	[OptionNullableElemTable] [r]
WHERE
	[r].[Id] = 2

