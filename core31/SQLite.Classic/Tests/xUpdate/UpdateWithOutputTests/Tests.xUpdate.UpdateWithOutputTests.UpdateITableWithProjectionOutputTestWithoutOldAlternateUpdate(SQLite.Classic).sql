BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,-1,'Str1'),
(2,-2,'Str2'),
(3,-3,'Str3'),
(4,-4,'Str4'),
(5,-5,'Str5'),
(6,-6,'Str6'),
(7,-7,'Str7'),
(8,-8,'Str8'),
(9,-9,'Str9')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DestinationTable]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,0,'0Dst'),
(2,-1,'-1Dst'),
(3,-2,'-2Dst'),
(4,-3,'-3Dst'),
(5,-4,'-4Dst'),
(6,-5,'-5Dst'),
(7,-6,'-6Dst'),
(8,-7,'-7Dst'),
(9,-8,'-8Dst')

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[DestinationTable]
SET
	[Id] = (
		SELECT
			[s].[Id]
		FROM
			[TableWithData] [s]
				INNER JOIN [DestinationTable] [t] ON [t].[Id] = [s].[Id]
		WHERE
			[DestinationTable].[Id] = [t].[Id] AND [DestinationTable].[Value] = [t].[Value] AND
			([DestinationTable].[ValueStr] = [t].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t].[ValueStr] IS NULL)
	),
	[Value] = (
		SELECT
			[s_1].[Value]
		FROM
			[TableWithData] [s_1]
				INNER JOIN [DestinationTable] [t_1] ON [t_1].[Id] = [s_1].[Id]
		WHERE
			[DestinationTable].[Id] = [t_1].[Id] AND [DestinationTable].[Value] = [t_1].[Value] AND
			([DestinationTable].[ValueStr] = [t_1].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_1].[ValueStr] IS NULL)
	),
	[ValueStr] = (
		SELECT
			[s_2].[ValueStr]
		FROM
			[TableWithData] [s_2]
				INNER JOIN [DestinationTable] [t_2] ON [t_2].[Id] = [s_2].[Id]
		WHERE
			[DestinationTable].[Id] = [t_2].[Id] AND [DestinationTable].[Value] = [t_2].[Value] AND
			([DestinationTable].[ValueStr] = [t_2].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_2].[ValueStr] IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableWithData] [s_3]
				INNER JOIN [DestinationTable] [t_3] ON [t_3].[Id] = [s_3].[Id]
		WHERE
			[DestinationTable].[Id] = [t_3].[Id] AND [DestinationTable].[Value] = [t_3].[Value] AND
			([DestinationTable].[ValueStr] = [t_3].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_3].[ValueStr] IS NULL)
	)
RETURNING
	[DestinationTable].[Value]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

