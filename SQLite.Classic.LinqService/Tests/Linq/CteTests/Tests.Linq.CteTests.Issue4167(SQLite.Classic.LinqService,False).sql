﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4167Table]
(
	[ID]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,
	[EnumValue] INTEGER           NULL,

	CONSTRAINT [PK_Issue4167Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[EnumValue] IS NOT NULL THEN [g_1].[EnumValue]
				ELSE 0
			END as [EnumValue]
		FROM
			[Issue4167Table] [g_1]
		WHERE
			[g_1].[Value] = '000001'
		GROUP BY
			[g_1].[Value],
			[g_1].[EnumValue]
	) [t1]
ORDER BY
	[t1].[EnumValue]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

