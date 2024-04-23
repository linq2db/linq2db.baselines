﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MainTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [MainTable]
(
	[Id]    Int           NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [AssociatedTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	(
		SELECT
			[_].[Id],
			[a_MainRequired].[Id] as [Id_1],
			[a_MainRequired].[Field]
		FROM
			[MainTable] [a_MainRequired],
			[MainTable] [_]
	) [cross_1]
		INNER JOIN [AssociatedTable] [a_AssociatedRequired] ON ([cross_1].[Id] = [a_AssociatedRequired].[Id])
SET
	[cross_1].[Field] = 'test'
WHERE
	[cross_1].[Id] = ? AND [a_AssociatedRequired].[Id] = [cross_1].[Id_1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MainTable]

