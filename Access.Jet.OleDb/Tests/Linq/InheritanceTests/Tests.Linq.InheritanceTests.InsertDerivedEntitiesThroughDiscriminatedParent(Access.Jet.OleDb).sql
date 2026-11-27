-- Access.Jet.OleDb AccessOleDb
DECLARE @Type VarWChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue VarWChar(9) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @Type VarWChar(23) -- String
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

-- Access.Jet.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	[InheritInsertParent] [t1]

