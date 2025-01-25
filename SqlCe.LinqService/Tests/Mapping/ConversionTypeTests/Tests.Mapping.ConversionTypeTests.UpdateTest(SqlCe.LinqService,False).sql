BeforeExecute
-- SqlCe

DROP TABLE [TrimTestTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***XXX***'

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
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***HHH***'

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
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***VVV***'

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
-- SqlCe
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[ID] = @ID

BeforeExecute
-- SqlCe
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[Data] = '***XXX***'

BeforeExecute
-- SqlCe
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable]
SET
	[Data] = @Data
WHERE
	[TrimTestTable].[Data] = @p

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe

DROP TABLE [TrimTestTable]

