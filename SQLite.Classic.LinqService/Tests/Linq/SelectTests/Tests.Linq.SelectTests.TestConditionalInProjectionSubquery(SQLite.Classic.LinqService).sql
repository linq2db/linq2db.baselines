﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MainEntityObject]
(
	[Id]        INTEGER      NOT NULL,
	[MainValue] NVarChar(50)     NULL,

	CONSTRAINT [PK_MainEntityObject] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @MainValue NVarChar(11) -- String
SET     @MainValue = 'MainValue 1'

INSERT INTO [MainEntityObject]
(
	[Id],
	[MainValue]
)
VALUES
(
	@Id,
	@MainValue
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @MainValue NVarChar(11) -- String
SET     @MainValue = 'MainValue 2'

INSERT INTO [MainEntityObject]
(
	[Id],
	[MainValue]
)
VALUES
(
	@Id,
	@MainValue
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ChildEntityObject]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [ChildEntityObject]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[q].[Id],
	[q].[Value_2],
	[q].[Value_3]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id],
			CASE
				WHEN ([c_1].[Id] IS NOT NULL OR [c_1].[Value] IS NOT NULL)
					THEN [c_1].[Value]
				WHEN [m_1].[MainValue] IS NOT NULL
					THEN [m_1].[MainValue]
				ELSE ''
			END as [Value_1],
			[c_1].[Value] as [Value_2],
			CASE
				WHEN [m_1].[MainValue] IS NOT NULL
					THEN [m_1].[MainValue]
				ELSE ''
			END as [Value_3]
		FROM
			[MainEntityObject] [m_1]
				LEFT JOIN [ChildEntityObject] [c_1] ON [c_1].[Id] = [m_1].[Id]
	) [q]
WHERE
	[q].[Id] % 2 = 0

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildEntityObject]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainEntityObject]

