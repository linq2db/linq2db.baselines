-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = 42
DECLARE @StrValue NVarChar(4000) -- String
SET     @StrValue = N'hello'

INSERT INTO [VOptionTable]
(
	[Id],
	[IntValue],
	[StrValue]
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @StrValue NVarChar(4000) -- String
SET     @StrValue = NULL

INSERT INTO [VOptionTable]
(
	[Id],
	[IntValue],
	[StrValue]
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[r].[Id],
	[r].[IntValue],
	[r].[StrValue]
FROM
	[VOptionTable] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[r].[Id],
	[r].[IntValue],
	[r].[StrValue]
FROM
	[VOptionTable] [r]
WHERE
	[r].[Id] = 2

