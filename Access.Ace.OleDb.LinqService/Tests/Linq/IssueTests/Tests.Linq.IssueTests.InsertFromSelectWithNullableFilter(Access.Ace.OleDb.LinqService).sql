BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [InsertIssueTest]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [InsertIssueTest]
(
	[ID]          SmallInt NOT NULL,
	[intDataType] Int          NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID SmallInt -- Int16
SET     @ID = 0
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 0

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID SmallInt -- Int16
SET     @ID = 0
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 0

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 1234

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 1234

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
				INNER JOIN [InsertIssueTest] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType] AND [a_Association].[intDataType] IS NOT NULL)
		WHERE
			1 = 0
	) [t2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
				INNER JOIN [InsertIssueTest] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType] AND [a_Association].[intDataType] IS NOT NULL)
		WHERE
			[t1].[ID] = @cond
	) [t2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertIssueTest] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [InsertIssueTest]

