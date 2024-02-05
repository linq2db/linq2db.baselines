BeforeExecute
-- Access AccessOleDb

DROP TABLE [WhereWithBool]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [WhereWithBool]
(
	[Id]        Int NOT NULL,
	[BoolValue] Bit NOT NULL,

	CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BoolValue Boolean
SET     @BoolValue = True

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t]
WHERE
	(
		SELECT
			[x].[BoolValue]
		FROM
			[WhereWithBool] [x]
		WHERE
			[x].[Id] = 1
	) = True

BeforeExecute
-- Access AccessOleDb

DROP TABLE [WhereWithBool]

