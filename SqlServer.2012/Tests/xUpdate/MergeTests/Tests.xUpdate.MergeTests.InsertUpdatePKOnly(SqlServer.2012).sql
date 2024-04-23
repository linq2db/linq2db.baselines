BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[PKOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [PKOnlyTable]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[PKOnlyTable]', N'U') IS NULL)
	CREATE TABLE [PKOnlyTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_PKOnlyTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [PKOnlyTable]
(
	[ID]
)
VALUES
(2)

BeforeExecute
-- SqlServer.2012

MERGE INTO [PKOnlyTable] [Target]
USING (VALUES
	(1), (2), (3)
) [Source]
(
	[source_ID]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN NOT MATCHED THEN
INSERT
(
	[ID]
)
VALUES
(
	[Source].[source_ID]
)
;

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[PKOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [PKOnlyTable]

