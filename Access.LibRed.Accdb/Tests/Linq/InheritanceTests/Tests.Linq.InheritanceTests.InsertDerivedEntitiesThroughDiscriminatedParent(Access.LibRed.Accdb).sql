-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Type NVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue NVarChar(9) -- String
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Type NVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue  -- Int32
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[InheritInsertParent] [t1]

