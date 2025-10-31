-- SqlServer.2014.MS SqlServer.2014
DECLARE @LanguageId Int -- Int32
SET     @LanguageId = 1
DECLARE @TextId Int -- Int32
SET     @TextId = 1
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'bbb'
DECLARE @TooltipText NVarChar(4000) -- String
SET     @TooltipText = N'ccc'

INSERT INTO [TextTranslationDTO]
(
	[LanguageId],
	[TextId],
	[Text],
	[TooltipText]
)
VALUES
(
	@LanguageId,
	@TextId,
	@Text,
	@TooltipText
)

-- SqlServer.2014.MS SqlServer.2014
DECLARE @LanguageID Int -- Int32
SET     @LanguageID = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'aaaa'
DECLARE @AlternativeLanguageID Int -- Int32
SET     @AlternativeLanguageID = 1

INSERT INTO [LanguageDTO]
(
	[LanguageID],
	[Name],
	[AlternativeLanguageID]
)
VALUES
(
	@LanguageID,
	@Name,
	@AlternativeLanguageID
)

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Nr Int -- Int32
SET     @Nr = 77
DECLARE @ServerOnlyText Bit -- Boolean
SET     @ServerOnlyText = 0

INSERT INTO [TextDTO]
(
	[Id],
	[Nr],
	[ServerOnlyText]
)
VALUES
(
	@Id,
	@Nr,
	@ServerOnlyText
)

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t2].[LanguageId],
	[t2].[TextId],
	[t2].[Text],
	[t2].[TooltipText]
FROM
	(
		SELECT
			[t1].[LanguageId],
			[t1].[TextId],
			[t1].[Text],
			[t1].[TooltipText],
			(
				SELECT
					COUNT(*)
				FROM
					[LanguageDTO] [l]
				WHERE
					[l].[AlternativeLanguageID] = [t1].[LanguageId]
			) as [COUNT_1],
			(
				SELECT
					[t].[ServerOnlyText]
				FROM
					[TextDTO] [t]
				WHERE
					[t].[Id] = [t1].[TextId]
			) as [ServerOnlyText]
		FROM
			[TextTranslationDTO] [t1]
	) [t2]
ORDER BY
	[t2].[COUNT_1],
	[t2].[ServerOnlyText]

