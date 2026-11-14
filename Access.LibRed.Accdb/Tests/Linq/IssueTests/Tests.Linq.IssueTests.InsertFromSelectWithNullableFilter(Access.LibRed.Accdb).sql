-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [InsertIssueTest]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
	123 as [c1],
	[t2].[ID] as [ID_1]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int16
SET     @p = 1234

INSERT INTO [InsertIssueTest]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
	123 as [c1],
	[t2].[ID] as [ID_1]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertIssueTest] [t1]
				INNER JOIN [InsertIssueTest] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType])
		WHERE
			[t1].[ID] = @p
	) [t2]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Pk],
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertIssueTest] [t1]

