BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NC_CODE]', N'U') IS NOT NULL)
	DROP TABLE [NC_CODE]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NC_GROUP_MEMBER]', N'U') IS NOT NULL)
	DROP TABLE [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NC_GROUP_MEMBER]', N'U') IS NULL)
	CREATE TABLE [NC_GROUP_MEMBER]
	(
		[HANDLE]               NVarChar(4000) NOT NULL,
		[NC_GROUP_BO]          NVarChar(4000)     NULL,
		[NC_CODE_OR_GROUP_GBO] NVarChar(4000)     NULL,
		[SEQUENCE]             Decimal            NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NC_GROUP_MEMBER]', N'U') IS NOT NULL)
	DROP TABLE [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[NC_CODE]', N'U') IS NOT NULL)
	DROP TABLE [NC_CODE]

