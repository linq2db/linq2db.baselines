BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Parent564]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Parent564]
(
	[Id]          Int            NOT NULL IDENTITY,
	[Type]        NVarChar(255)      NULL,
	[StringValue] NVarChar(20)       NULL,
	[IntValue]    Int                NULL,

	CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Parent564]

