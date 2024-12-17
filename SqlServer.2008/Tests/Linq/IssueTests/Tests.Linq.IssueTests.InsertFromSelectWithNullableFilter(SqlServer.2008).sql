BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InsertIssueTest]', N'U') IS NOT NULL)
	DROP TABLE [InsertIssueTest]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InsertIssueTest]', N'U') IS NULL)
	CREATE TABLE [InsertIssueTest]
	(
		[ID]          SmallInt NOT NULL,
		[intDataType] Int          NULL
	)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

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
			1 = 0
	) [t2]

BeforeExecute
-- SqlServer.2008
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
				INNER JOIN [InsertIssueTest] [a_Association] ON [t1].[ID] = [a_Association].[intDataType]
		WHERE
			[t1].[ID] = @cond
	) [t2]

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertIssueTest] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InsertIssueTest]', N'U') IS NOT NULL)
	DROP TABLE [InsertIssueTest]

