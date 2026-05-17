-- Access.Jet.OleDb AccessOleDb
DECLARE @Type VarWChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue VarWChar(9) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @Type VarWChar(9) -- String
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

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

