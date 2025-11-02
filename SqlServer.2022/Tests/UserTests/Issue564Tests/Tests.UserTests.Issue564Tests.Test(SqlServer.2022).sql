-- SqlServer.2022
DECLARE @Type NVarChar(4000) -- String
SET     @Type = N'Child564A'
DECLARE @StringValue NVarChar(20) -- String
SET     @StringValue = N'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	@Type,
	@StringValue
)

-- SqlServer.2022
DECLARE @Type NVarChar(4000) -- String
SET     @Type = N'Child564B'
DECLARE @IntValue Int -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	@Type,
	@IntValue
)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

