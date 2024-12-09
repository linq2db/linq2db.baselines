BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InsertIssueTest]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InsertIssueTest]
(
	[ID]          SmallInt NOT NULL,
	[intDataType] INTEGER      NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
VALUES
(0,0),
(0,0),
(1234,1234),
(1234,1234)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @cond  -- Int16
SET     @cond = 0

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
				INNER JOIN [InsertIssueTest] [a_Association] ON [t1].[ID] = [a_Association].[intDataType]
		WHERE
			[t1].[ID] = @cond
	) [t2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InsertIssueTest]

