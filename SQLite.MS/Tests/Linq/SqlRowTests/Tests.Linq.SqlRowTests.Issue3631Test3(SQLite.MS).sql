BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3631Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3631Table]
(
	[Country] NVarChar(2) NOT NULL,
	[State]   NVarChar(2) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
('US','AL'),
('US','AZ'),
('US','CA'),
('US','FL'),
('US','IN'),
('US','OH'),
('US','NY'),
('CA','AB'),
('CA','ON')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(
				SELECT NULL [Item1], NULL [Item2] WHERE 1 = 0
				UNION ALL
				VALUES
					('US','CA'), ('US','NY')
				) [t1]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3631Table]

