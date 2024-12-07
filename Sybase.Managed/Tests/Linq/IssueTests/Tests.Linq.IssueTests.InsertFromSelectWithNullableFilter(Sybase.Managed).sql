BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InsertIssueTest') IS NOT NULL)
	DROP TABLE [InsertIssueTest]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InsertIssueTest') IS NULL)
	EXECUTE('
		CREATE TABLE [InsertIssueTest]
		(
			[ID]          SmallInt NOT NULL,
			[intDataType] Int          NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @cond SmallInt -- Int16
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InsertIssueTest') IS NOT NULL)
	DROP TABLE [InsertIssueTest]

