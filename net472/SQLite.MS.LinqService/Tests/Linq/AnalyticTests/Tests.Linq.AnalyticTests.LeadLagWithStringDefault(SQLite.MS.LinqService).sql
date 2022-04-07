BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1799Table3]
(
	[ProcessID]   INTEGER       NOT NULL,
	[ProcessName] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	LAG([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

