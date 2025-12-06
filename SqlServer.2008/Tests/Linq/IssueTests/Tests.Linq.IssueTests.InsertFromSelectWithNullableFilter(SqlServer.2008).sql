-- SqlServer.2008

INSERT INTO [InsertIssueTest]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
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

-- SqlServer.2008
DECLARE @cond SmallInt -- Int16
SET     @cond = 1234

INSERT INTO [InsertIssueTest]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
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

-- SqlServer.2008

SELECT
	[t1].[Pk],
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertIssueTest] [t1]

