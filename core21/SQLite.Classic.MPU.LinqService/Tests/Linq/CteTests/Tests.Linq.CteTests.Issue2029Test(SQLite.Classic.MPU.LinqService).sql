﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [NC_CODE]
(
	[HANDLE]             NVarChar(255) NOT NULL,
	[CHANGE_STAMP]       Decimal           NULL,
	[SITE]               NVarChar(255)     NULL,
	[NC_CODE]            NVarChar(255)     NULL,
	[DESCRIPTION]        NVarChar(255)     NULL,
	[STATUS_BO]          NVarChar(255)     NULL,
	[CREATED_DATE_TIME]  DateTime2         NULL,
	[MODIFIED_DATE_TIME] DateTime2         NULL,
	[NC_CATEGORY]        NVarChar(255)     NULL,
	[DPMO_CATEGORY_BO]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [NC_GROUP_MEMBER]
(
	[HANDLE]               NVarChar(255) NOT NULL,
	[NC_GROUP_BO]          NVarChar(255)     NULL,
	[NC_CODE_OR_GROUP_GBO] NVarChar(255)     NULL,
	[SEQUENCE]             Decimal           NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [NC_GROUP_MEMBER]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [NC_CODE]

