BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1373Tests]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue1373Tests]
(
	[Id]     Int           NOT NULL,
	[Field1] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @Field1 NVarChar -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	2,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Field1 NVarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1373Tests]

