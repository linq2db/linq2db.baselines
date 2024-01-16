BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4167Table]
(
	[ID]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,
	[EnumValue] INTEGER           NULL,

	CONSTRAINT [PK_Issue4167Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = 0

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = 3

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = NULL

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = 0

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @default  -- Int32
SET     @default = 0

WITH [CTE_1] ([EnumValue])
AS
(
	SELECT
		Coalesce([t].[EnumValue], @default)
	FROM
		[Issue4167Table] [t]
	WHERE
		[t].[Value] = '000001'
	GROUP BY
		[t].[Value],
		[t].[EnumValue]
)
SELECT
	[r].[EnumValue]
FROM
	[CTE_1] [r]
ORDER BY
	[r].[EnumValue]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

