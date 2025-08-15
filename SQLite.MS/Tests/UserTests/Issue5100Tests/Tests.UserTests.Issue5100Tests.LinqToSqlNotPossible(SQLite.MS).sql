BeforeExecute
-- SQLite.MS SQLite
DECLARE @LanguageId  -- Int32
SET     @LanguageId = 1
DECLARE @TextId  -- Int32
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

BeforeExecute
-- SQLite.MS SQLite
DECLARE @LanguageID  -- Int32
SET     @LanguageID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'aaaa'
DECLARE @AlternativeLanguageID  -- Int32
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

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Nr  -- Int32
SET     @Nr = 77
DECLARE @ServerOnlyText  -- Boolean
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

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[LanguageId],
	[t1].[TextId],
	[t1].[Text],
	[t1].[TooltipText]
FROM
	[TextTranslationDTO] [t1]
ORDER BY
	(
		SELECT
			COUNT(*)
		FROM
			[LanguageDTO] [l]
		WHERE
			[l].[AlternativeLanguageID] = [t1].[LanguageId]
	),
	(
		SELECT
			[t].[ServerOnlyText]
		FROM
			[TextDTO] [t]
		WHERE
			[t].[Id] = [t1].[TextId]
	)
LIMIT 1

