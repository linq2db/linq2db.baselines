BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [PatentAssessment]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[PatentAssessment]', N'U') IS NULL)
	CREATE TABLE [PatentAssessment]
	(
		[PatentId]               Int            NOT NULL,
		[TechnicalReviewersText] NVarChar(1000)     NULL,

		CONSTRAINT [PK_PatentAssessment] PRIMARY KEY CLUSTERED ([PatentId])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue2918Table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue2918Table2]', N'U') IS NULL)
	CREATE TABLE [Issue2918Table2]
	(
		[PatentId] Int NOT NULL,
		[UserId]   Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int            NOT NULL,
		[DisplayName] NVarChar(1000) NOT NULL,

		CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @userId Int -- Int32
SET     @userId = 1

MERGE INTO [PatentAssessment] [Target]
USING (
	SELECT
		[pa].[PatentId] as [source_PatentId],
		(
			SELECT
				STRING_AGG([a_User].[DisplayName], N'; ') WITHIN GROUP (ORDER BY [a_User].[DisplayName])
			FROM
				[Issue2918Table2] [patr]
					LEFT JOIN [User] [a_User] ON [patr].[UserId] = [a_User].[Id]
			WHERE
				[patr].[PatentId] = [pa].[PatentId]
		) as [source_TechnicalReviewersText]
	FROM
		[PatentAssessment] [pa]
	WHERE
		EXISTS(
			SELECT
				*
			FROM
				[Issue2918Table2] [patr_1]
			WHERE
				[patr_1].[UserId] = @userId AND [patr_1].[PatentId] = [pa].[PatentId]
		)
) [Source]
(
	[source_PatentId],
	[source_TechnicalReviewersText]
)
ON ([Target].[PatentId] = [Source].[source_PatentId])

WHEN MATCHED THEN
UPDATE
SET
	[TechnicalReviewersText] = [Source].[source_TechnicalReviewersText]
;

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue2918Table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [PatentAssessment]

