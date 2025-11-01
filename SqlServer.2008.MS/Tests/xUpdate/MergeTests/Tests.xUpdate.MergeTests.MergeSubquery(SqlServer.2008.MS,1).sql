-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#MergeTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

INSERT BULK [tempdb]..[#MergeTemp](ID, Name)

-- SqlServer.2008.MS SqlServer.2008

MERGE INTO [tempdb]..[#MergeTemp] [t1]
USING (SELECT (
	SELECT
		[t].[ID]
	FROM
		[tempdb]..[#MergeTemp] [t]
	WHERE
		[t].[Name] = N'John'
) AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[ID] = [t1].[ID],
		[Name] = [t1].[Name]
WHEN NOT MATCHED THEN
	INSERT
	(
		[ID],
		[Name]
	)
	VALUES
	(
		(
			SELECT
				[t].[ID]
			FROM
				[tempdb]..[#MergeTemp] [t]
			WHERE
				[t].[Name] = N'John'
		),
		N'John II'
	);

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#MergeTemp]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#MergeTemp]

