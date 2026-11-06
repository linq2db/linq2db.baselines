-- SQLite.MS SQLite
DECLARE @LanguageId Integer -- Int32
SET     @LanguageId = 1
DECLARE @TextId Integer -- Int32
SET     @TextId = 1
DECLARE @Text NVarChar(3) -- String
SET     @Text = 'bbb'
DECLARE @TooltipText NVarChar(3) -- String
SET     @TooltipText = 'ccc'

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

-- SQLite.MS SQLite
DECLARE @LanguageID Integer -- Int32
SET     @LanguageID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'aaaa'
DECLARE @AlternativeLanguageID Integer -- Int32
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

-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Nr Integer -- Int32
SET     @Nr = 77
DECLARE @ServerOnlyText Integer -- Boolean
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

-- SQLite.MS SQLite
SELECT
	[t1].[LanguageId],
	[t1].[TextId],
	[t1].[Text],
	[t1].[TooltipText]
FROM
	[TextTranslationDTO] [t1]
		INNER JOIN [TextDTO] [t] ON [t].[Id] = [t1].[TextId]
ORDER BY
	(
		SELECT
			COUNT(*)
		FROM
			[LanguageDTO] [l]
		WHERE
			[l].[AlternativeLanguageID] = [t1].[LanguageId]
	),
	[t].[ServerOnlyText]
LIMIT 1

