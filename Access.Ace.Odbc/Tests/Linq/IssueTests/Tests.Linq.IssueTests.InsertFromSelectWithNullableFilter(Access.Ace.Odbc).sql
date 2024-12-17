BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InsertIssueTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [InsertIssueTest]
(
	[ID]          SmallInt NOT NULL,
	[intDataType] Int          NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID SmallInt -- Int16
SET     @ID = 0
DECLARE @intDataType Int -- Int32
SET     @intDataType = 0

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID SmallInt -- Int16
SET     @ID = 0
DECLARE @intDataType Int -- Int32
SET     @intDataType = 0

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234
DECLARE @intDataType Int -- Int32
SET     @intDataType = 1234

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234
DECLARE @intDataType Int -- Int32
SET     @intDataType = 1234

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
SELECT
	123,
	[t2].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertIssueTest] [t1]
				INNER JOIN [InsertIssueTest] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType])
		WHERE
			1 = 0
	) [t2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @cond SmallInt -- Int16
SET     @cond = 1234

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
SELECT
	123,
	[t2].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertIssueTest] [t1]
				INNER JOIN [InsertIssueTest] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType])
		WHERE
			[t1].[ID] = ?
	) [t2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertIssueTest] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InsertIssueTest]

