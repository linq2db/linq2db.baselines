-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarWChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue VarWChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO [OfTypeTaskBase]
(
	[Id],
	[TargetName],
	[BdaValue]
)
VALUES
(
	@Id,
	@TargetName,
	@BdaValue
)

-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[Id],
	[p].[TargetName],
	[p].[BdaValue]
FROM
	[OfTypeTaskBase] [p]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[p].[BdaValue]
FROM
	[OfTypeTaskBase] [p]

