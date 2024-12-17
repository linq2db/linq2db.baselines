BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [test_in_1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [test_in_1]
(
	[ID] Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [test_in_2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [test_in_2]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND  NOT EXISTS (
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [test_in_2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [test_in_1]

