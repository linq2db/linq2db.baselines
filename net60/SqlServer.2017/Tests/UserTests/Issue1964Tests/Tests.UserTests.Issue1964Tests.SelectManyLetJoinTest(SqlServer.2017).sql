﻿BeforeExecute
-- SqlServer.2017

CREATE TABLE [dbo].[Attachment]
(
	[Id]          Int             NOT NULL IDENTITY,
	[Type]        Int             NOT NULL,
	[ItemId]      Int             NOT NULL,
	[Name]        NVarChar(4000)  NOT NULL,
	[ContentType] NVarChar(4000)  NOT NULL,
	[Url]         NVarChar(4000)  NOT NULL,
	[Status]      Int             NOT NULL,
	[CreateTime]  DateTime        NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [dbo].[BranchInfo]
(
	[BranchId]         Int             NOT NULL IDENTITY,
	[BranchCode]       NVarChar(4000)  NOT NULL,
	[BranchName]       NVarChar(4000)  NOT NULL,
	[BranchParentCode] NVarChar(4000)  NOT NULL,
	[CompanyCode]      NVarChar(4000)  NOT NULL,
	[AreaCode]         NVarChar(4000)  NOT NULL,
	[BranchAddress]    NVarChar(4000)  NOT NULL,
	[BrandContacts]    NVarChar(4000)  NOT NULL,
	[BrandPhone]       NVarChar(4000)  NOT NULL,
	[Status]           Int             NOT NULL,
	[CreateTime]       DateTime        NOT NULL,
	[CreateUser]       NVarChar(4000)  NOT NULL,
	[LastUpdateTime]   DateTime        NOT NULL,
	[LastUpdateUser]   NVarChar(4000)  NOT NULL,
	[BusinessHours]    NVarChar(4000)  NOT NULL,
	[PointX]           Decimal         NOT NULL,
	[PointY]           Decimal         NOT NULL,
	[BranchIsShow]     Int             NOT NULL,
	[BranchType]       Int             NOT NULL,

	CONSTRAINT [PK_BranchInfo] PRIMARY KEY CLUSTERED ([BranchId])
)

BeforeExecute
-- SqlServer.2017

SELECT
	[m_1].[BranchAddress],
	[m_1].[BranchId],
	[m_1].[BranchName],
	[m_1].[BusinessHours],
	[m_1].[PointX],
	[m_1].[PointY],
	[t1].[Url]
FROM
	[dbo].[BranchInfo] [m_1]
		LEFT JOIN (
			SELECT
				[att].[ItemId],
				[att].[Url]
			FROM
				(
					SELECT
						ROW_NUMBER() OVER(PARTITION BY [temp_1].[ItemId] ORDER BY [temp_1].[CreateTime]) as [Index_1],
						[temp_1].[ItemId],
						[temp_1].[Url]
					FROM
						[dbo].[Attachment] [temp_1]
					WHERE
						[temp_1].[Status] = 0 AND [temp_1].[Type] = 2
				) [att]
			WHERE
				[att].[Index_1] = 1
		) [t1] ON [t1].[ItemId] = [m_1].[BranchId]
WHERE
	[m_1].[BranchIsShow] = 0 AND [m_1].[Status] = 0

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [dbo].[BranchInfo]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [dbo].[Attachment]

