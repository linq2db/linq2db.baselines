-- Sybase.Managed Sybase
DECLARE @Type UniVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue UniVarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO [InheritInsertParent]
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
DECLARE @Type UniVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO [InheritInsertParent]
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
	[InheritInsertParent] [t1]

