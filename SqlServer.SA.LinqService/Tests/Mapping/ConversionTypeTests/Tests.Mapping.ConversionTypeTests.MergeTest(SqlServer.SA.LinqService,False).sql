BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TrimTestTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NULL)
	CREATE TABLE [TrimTestTable]
	(
		[ID]   Int          NOT NULL,
		[Data] NVarChar(50)     NULL,

		CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***XXX***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***VVV***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

MERGE INTO [TrimTestTable] [Target]
USING (VALUES
	(1,N'***OOO***'), (2,N'***SSS***')
) [Source]
(
	[source_ID],
	[source_Data]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[Data] = [Source].[source_Data]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[source_ID],
	[Source].[source_Data]
)
;

BeforeExecute
-- SqlServer.SA SqlServer.2019

MERGE INTO [TrimTestTable] [Target]
USING (VALUES
	(3,N'***III***')
) [Source]
(
	[source_ID],
	[source_Data]
)
ON ([Target].[ID] = [Source].[source_ID])

WHEN MATCHED THEN
UPDATE
SET
	[Data] = [Source].[source_Data]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[source_ID],
	[Source].[source_Data]
)
;

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TrimTestTable]

