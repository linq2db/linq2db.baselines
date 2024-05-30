BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1078Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1078Table]
(
	[UserID] INTEGER NOT NULL,
	[SiteID] INTEGER NOT NULL,
	[Active] Bit     NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY ([UserID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(1,1,1),
(2,1,0),
(3,1,1),
(4,2,0),
(5,2,1),
(6,2,0),
(7,2,0),
(8,3,0),
(9,4,1)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1078Table]

