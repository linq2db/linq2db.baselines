-- SqlServer.2016
DECLARE @BlogType NVarChar(200) -- String
SET     @BlogType = N'blog_base'
DECLARE @Url NVarChar(4000) -- String
SET     @Url = N'BlogUrl'

INSERT INTO [Blogs]
(
	[BlogType],
	[Url]
)
VALUES
(
	@BlogType,
	@Url
)



-- SqlServer.2016
DECLARE @BlogType NVarChar(200) -- String
SET     @BlogType = N'blog_rss'
DECLARE @Url NVarChar(4000) -- String
SET     @Url = N'RssUrl'

INSERT INTO [Blogs]
(
	[BlogType],
	[Url]
)
VALUES
(
	@BlogType,
	@Url
)



SELECT [b].[Id], [b].[BlogType], [b].[Url]
FROM [Blogs] AS [b]
WHERE [b].[BlogType] IN (N'blog_base', N'blog_rss')


