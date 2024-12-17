BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1373Tests]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue1373Tests]
(
	[Id]     Int           NOT NULL,
	[Field1] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	2,
	NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Field1 VarWChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	@Field1
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1373Tests]

