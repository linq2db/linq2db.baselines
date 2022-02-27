BeforeExecute
-- SqlServer.2017

CREATE TABLE [NC_CODE]
(
	[HANDLE]             NVarChar(4000) NOT NULL,
	[CHANGE_STAMP]       Decimal            NULL,
	[SITE]               NVarChar(4000)     NULL,
	[NC_CODE]            NVarChar(4000)     NULL,
	[DESCRIPTION]        NVarChar(4000)     NULL,
	[STATUS_BO]          NVarChar(4000)     NULL,
	[CREATED_DATE_TIME]  DateTime           NULL,
	[MODIFIED_DATE_TIME] DateTime           NULL,
	[NC_CATEGORY]        NVarChar(4000)     NULL,
	[DPMO_CATEGORY_BO]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [NC_GROUP_MEMBER]
(
	[HANDLE]               NVarChar(4000) NOT NULL,
	[NC_GROUP_BO]          NVarChar(4000)     NULL,
	[NC_CODE_OR_GROUP_GBO] NVarChar(4000)     NULL,
	[SEQUENCE]             Decimal            NULL
)

BeforeExecute
-- SqlServer.2017

DROP TABLE [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.2017

DROP TABLE [NC_CODE]

