BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

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
-- SQLite.MS SQLite (asynchronously)
DECLARE @ID  -- Int32
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
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

