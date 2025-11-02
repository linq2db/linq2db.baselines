-- Sybase.Managed Sybase
DECLARE @Type UniVarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue UniVarChar(9) -- String
SET     @StringValue = 'SomeValue'

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

-- Sybase.Managed Sybase
DECLARE @Type UniVarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

