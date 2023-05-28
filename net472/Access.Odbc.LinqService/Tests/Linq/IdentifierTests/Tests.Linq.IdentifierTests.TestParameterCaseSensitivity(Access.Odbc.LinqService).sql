BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[col2]    Int NOT NULL,
	[col3]    Int NOT NULL,
	[Column1] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test Int -- Int32
SET     @test = 0
DECLARE @TEST Int -- Int32
SET     @TEST = 0
DECLARE @Component_Column1 Int -- Int32
SET     @Component_Column1 = 1

INSERT INTO [testparams]
(
	[col2],
	[col3],
	[Column1]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @test Int -- Int32
SET     @test = 2
DECLARE @TEST Int -- Int32
SET     @TEST = 3

UPDATE
	[testparams] [t]
SET
	[t].[col2] = ?,
	[t].[col3] = ?
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @TEST Int -- Int32
SET     @TEST = 2
DECLARE @test Int -- Int32
SET     @test = 3

UPDATE
	[testparams] [t]
SET
	[t].[col3] = ?,
	[t].[col2] = ?
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

