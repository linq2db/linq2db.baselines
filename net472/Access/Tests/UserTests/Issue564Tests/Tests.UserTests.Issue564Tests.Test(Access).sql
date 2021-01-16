BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Parent564]
(
	[Id]          Int            NOT NULL IDENTITY,
	[Type]        NVarChar(255)      NULL,
	[StringValue] NVarChar(20)       NULL,
	[IntValue]    Int                NULL,

	CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Type_1 VarWChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue VarWChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Type_1 VarWChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Parent564]

