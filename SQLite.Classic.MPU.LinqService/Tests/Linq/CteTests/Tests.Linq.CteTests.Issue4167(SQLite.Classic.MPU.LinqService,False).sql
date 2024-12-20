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

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			CASE
				WHEN [r].[EnumValue] IS NOT NULL THEN [r].[EnumValue]
				ELSE 0
			END as [EnumValue]
		FROM
			[Issue4167Table] [r]
		WHERE
			[r].[Value] = '000001'
		GROUP BY
			[r].[Value],
			[r].[EnumValue]
	) [t1]
ORDER BY
	[t1].[EnumValue]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

