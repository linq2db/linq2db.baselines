BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [test_in_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [test_in_1]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 3

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [test_in_2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [test_in_2]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)
ORDER BY
	[t].[ID]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [test_in_2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [test_in_1]

