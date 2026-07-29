-- SQLite.Classic.MPM SQLite.Classic SQLite
CREATE TABLE [temp_table_1]
(
	[ID]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_temp_table_1] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [temp_table_1]
(
	[ID],
	[Value]
)
VALUES
(1,'Value')

-- SQLite.Classic.MPM SQLite.Classic SQLite
CREATE TABLE [temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	CONSTRAINT [PK_temp_table_2] PRIMARY KEY ([Value])
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DROP TABLE IF EXISTS [temp_table_2]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DROP TABLE IF EXISTS [temp_table_1]

