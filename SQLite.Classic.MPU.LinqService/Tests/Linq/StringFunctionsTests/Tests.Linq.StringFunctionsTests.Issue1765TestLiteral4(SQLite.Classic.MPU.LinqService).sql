﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]     INTEGER      NOT NULL,
	[Value1] NVarChar(50)     NULL,
	[Value2] NVarChar(50)     NULL,
	[Value3] VarChar(50)      NULL,
	[Value4] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 NVarChar(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 VarChar -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 NVarChar(2) -- String
SET     @Value4 = 'V4'

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value1 NVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 VarChar -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 NVarChar -- String
SET     @Value4 = NULL

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 NVarChar -- String
SET     @Value2 = NULL
DECLARE @Value3 VarChar -- AnsiString
SET     @Value3 = NULL
DECLARE @Value4 NVarChar(2) -- String
SET     @Value4 = 'Z4'

INSERT INTO [SampleClass]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			MAX([t].[Value4])
		FROM
			[SampleClass] [t]
		WHERE
			[g_1].[Id] = [t].[Id] AND ([g_1].[Value4] = [t].[Value4] OR [g_1].[Value4] IS NULL AND [t].[Value4] IS NULL)
	),
	GROUP_CONCAT([g_1].[Value4], ' -> ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]
ORDER BY
	[g_1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

