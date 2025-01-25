BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [PKOnlyTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[PKOnlyTable]', N'U') IS NULL)
	CREATE TABLE [PKOnlyTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_PKOnlyTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO [PKOnlyTable]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [PKOnlyTable]

