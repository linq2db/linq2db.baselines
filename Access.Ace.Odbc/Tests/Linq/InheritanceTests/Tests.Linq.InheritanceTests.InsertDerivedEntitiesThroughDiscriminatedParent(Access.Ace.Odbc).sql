-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Type NVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Int -- Int32
SET     @IntValue = 911

INSERT INTO [InheritInsertParent]
(
	[Type],
	[IntValue]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[InheritInsertParent] [t1]

