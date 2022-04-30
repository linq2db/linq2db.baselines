BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1799Table3]
(
	[ProcessID]   INTEGER       NOT NULL,
	[ProcessName] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ProcessID  -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName NVarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ProcessID  -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName NVarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ProcessID  -- Int32
SET     @ProcessID = 3
DECLARE @ProcessName NVarChar(5) -- String
SET     @ProcessName = 'Three'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ProcessID  -- Int32
SET     @ProcessID = 4
DECLARE @ProcessName NVarChar(4) -- String
SET     @ProcessName = 'Four'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	LEAD([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	LEAD([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	LAG([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	LAG([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

