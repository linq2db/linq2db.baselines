﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [NC_CODE]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[NC_CODE]', N'U') IS NULL)
	CREATE TABLE [NC_CODE]
	(
		[HANDLE]             NVarChar(4000) NOT NULL,
		[CHANGE_STAMP]       Decimal            NULL,
		[SITE]               NVarChar(18)       NULL,
		[NC_CODE]            NVarChar(48)       NULL,
		[DESCRIPTION]        NVarChar(120)      NULL,
		[STATUS_BO]          NVarChar(4000)     NULL,
		[CREATED_DATE_TIME]  DateTime2          NULL,
		[MODIFIED_DATE_TIME] DateTime2          NULL,
		[NC_CATEGORY]        NVarChar(4000)     NULL,
		[DPMO_CATEGORY_BO]   NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[NC_GROUP_MEMBER]', N'U') IS NULL)
	CREATE TABLE [NC_GROUP_MEMBER]
	(
		[HANDLE]               NVarChar(4000) NOT NULL,
		[NC_GROUP_BO]          NVarChar(4000)     NULL,
		[NC_CODE_OR_GROUP_GBO] NVarChar(4000)     NULL,
		[SEQUENCE]             Decimal            NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [NC_CODE]

