-- SqlServer.Contained SqlServer.2025
DECLARE @Type NVarChar(4000) -- String
SET     @Type = N'InheritanceInsertChildA'
DECLARE @StringValue NVarChar(20) -- String
SET     @StringValue = N'SomeValue'

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

-- SqlServer.Contained SqlServer.2025
DECLARE @Type NVarChar(4000) -- String
SET     @Type = N'InheritanceInsertChildB'
DECLARE @IntValue Int -- Int32
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

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[InheritInsertParent] [t1]

