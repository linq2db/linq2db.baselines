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
DECLARE @cond SmallInt -- Int16
SET     @cond = 0

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

DROP TABLE [InsertIssueTest]

