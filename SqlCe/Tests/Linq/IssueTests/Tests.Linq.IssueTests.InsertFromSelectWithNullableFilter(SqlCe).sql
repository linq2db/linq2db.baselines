BeforeExecute
-- SqlCe

DROP TABLE [InsertIssueTest]

BeforeExecute
-- SqlCe

CREATE TABLE [InsertIssueTest]
(
	[ID]          SmallInt NOT NULL,
	[intDataType] Int          NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
SELECT 0,0 UNION ALL
SELECT 0,0 UNION ALL
SELECT 1234,1234 UNION ALL
SELECT 1234,1234

BeforeExecute
-- SqlCe

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
SELECT
	123 as [c1],
	[t2].[ID] as [c2]
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
-- SqlCe
DECLARE @cond SmallInt -- Int16
SET     @cond = 1234

INSERT INTO [InsertIssueTest]
(
	[ID],
	[intDataType]
)
SELECT
	123 as [c1],
	[t2].[ID] as [c2]
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
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertIssueTest] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [InsertIssueTest]

