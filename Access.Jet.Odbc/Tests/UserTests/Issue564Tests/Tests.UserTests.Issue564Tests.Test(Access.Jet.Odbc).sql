BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Parent564]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Parent564]
(
	[Id]          Int            NOT NULL IDENTITY,
	[Type]        NVarChar(255)      NULL,
	[StringValue] NVarChar(20)       NULL,
	[IntValue]    Int                NULL,

	CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Type NVarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue NVarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Type NVarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue  -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Parent564]

