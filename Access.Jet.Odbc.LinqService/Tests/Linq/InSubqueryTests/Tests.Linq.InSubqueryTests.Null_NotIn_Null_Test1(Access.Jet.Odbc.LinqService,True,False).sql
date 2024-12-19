BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [test_in_1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [test_in_1]
(
	[ID] Int     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = NULL

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [test_in_2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [test_in_2]
(
	[ID] Int     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 6

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = NULL

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[p].[ID] IS NOT NULL AND ([t].[ID] = [p].[ID] OR [t].[ID] IS NULL AND [p].[ID] IS NULL)
	)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [test_in_2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [test_in_1]

