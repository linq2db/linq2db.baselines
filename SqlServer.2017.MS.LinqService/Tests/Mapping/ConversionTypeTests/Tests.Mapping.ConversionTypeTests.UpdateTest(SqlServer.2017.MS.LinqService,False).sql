BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TrimTestTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NULL)
	CREATE TABLE [TrimTestTable]
	(
		[ID]   Int          NOT NULL,
		[Data] NVarChar(50)     NULL,

		CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***HHH***'

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
-- SqlServer.2017.MS SqlServer.2017
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***III***'
DECLARE @ID Int -- Int32
SET     @ID = 3

UPDATE
	[t1]
SET
	[t1].[Data] = @Data
FROM
	[TrimTestTable] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***OOO***'

UPDATE
	[t]
SET
	[t].[Data] = @Data
FROM
	[TrimTestTable] [t]
WHERE
	[t].[Data] = N'***XXX***'

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***SSS***'
DECLARE @p NVarChar(50) -- String
SET     @p = N'***HHH***'

UPDATE
	[t]
SET
	[t].[Data] = @Data
FROM
	[TrimTestTable] [t]
WHERE
	[t].[Data] = @p

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TrimTestTable]

