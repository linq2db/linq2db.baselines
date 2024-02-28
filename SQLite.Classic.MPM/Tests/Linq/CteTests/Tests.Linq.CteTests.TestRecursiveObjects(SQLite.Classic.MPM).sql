﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrgGroup]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [OrgGroup]
(
	[Id]        INTEGER       NOT NULL,
	[ParentId]  INTEGER       NOT NULL,
	[GroupName] NVarChar(255)     NULL,

	CONSTRAINT [PK_OrgGroup] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [previous]
(
	[OrgGroup_Id],
	[OrgGroup_ParentId],
	[OrgGroup_GroupName],
	[Depth]
)
AS
(
	SELECT
		[parent].[Id],
		[parent].[ParentId],
		[parent].[GroupName],
		0
	FROM
		[OrgGroup] [parent]
	UNION
	SELECT
		[child].[Id],
		[child].[ParentId],
		[child].[GroupName],
		[parent_1].[Depth] + 1
	FROM
		[OrgGroup] [child]
			INNER JOIN [previous] [parent_1] ON ([parent_1].[OrgGroup_Id] = [child].[ParentId])
)
SELECT
	[t1].[OrgGroup_Id],
	[t1].[OrgGroup_ParentId],
	[t1].[OrgGroup_GroupName]
FROM
	[previous] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrgGroup]

