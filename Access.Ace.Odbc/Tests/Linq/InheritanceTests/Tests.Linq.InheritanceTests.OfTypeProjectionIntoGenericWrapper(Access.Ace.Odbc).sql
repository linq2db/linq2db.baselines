-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue NVarChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO [OfTypeTaskBase]
(
	[Id],
	[TargetName],
	[BdaValue]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[Id],
	[p].[TargetName],
	[p].[BdaValue]
FROM
	[OfTypeTaskBase] [p]

-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[BdaValue]
FROM
	[OfTypeTaskBase] [p]

