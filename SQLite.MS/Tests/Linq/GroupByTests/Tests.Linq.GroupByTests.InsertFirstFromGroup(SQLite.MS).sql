-- SQLite.MS SQLite
CREATE TABLE [temp_table_1]
(
	[ID]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_temp_table_1] PRIMARY KEY ([ID])
)

-- SQLite.MS SQLite
INSERT INTO [temp_table_1]
(
	[ID],
	[Value]
)
VALUES
(1,'Value')

-- SQLite.MS SQLite
CREATE TABLE [temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	CONSTRAINT [PK_temp_table_2] PRIMARY KEY ([Value])
)

-- SQLite.MS SQLite
INSERT INTO [temp_table_2]
(
	[Value]
)
SELECT
	(
		SELECT
			[c_1].[Value]
		FROM
			[temp_table_1] [c_1]
		WHERE
			[gr].[ID] = [c_1].[ID]
		LIMIT 1
	)
FROM
	[temp_table_1] [gr]

-- SQLite.MS SQLite
DROP TABLE IF EXISTS [temp_table_2]

-- SQLite.MS SQLite
DROP TABLE IF EXISTS [temp_table_1]

