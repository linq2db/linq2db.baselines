﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_CODE]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NC_CODE]
(
	[HANDLE]             NVarChar(255)   NOT NULL,
	[CHANGE_STAMP]       Decimal(29, 10)     NULL,
	[SITE]               NVarChar(18)        NULL,
	[NC_CODE]            NVarChar(48)        NULL,
	[DESCRIPTION]        NVarChar(120)       NULL,
	[STATUS_BO]          NVarChar(255)       NULL,
	[CREATED_DATE_TIME]  DateTime2           NULL,
	[MODIFIED_DATE_TIME] DateTime2           NULL,
	[NC_CATEGORY]        NVarChar(255)       NULL,
	[DPMO_CATEGORY_BO]   NVarChar(255)       NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NC_GROUP_MEMBER]
(
	[HANDLE]               NVarChar(255)   NOT NULL,
	[NC_GROUP_BO]          NVarChar(255)       NULL,
	[NC_CODE_OR_GROUP_GBO] NVarChar(255)       NULL,
	[SEQUENCE]             Decimal(29, 10)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_CODE]

