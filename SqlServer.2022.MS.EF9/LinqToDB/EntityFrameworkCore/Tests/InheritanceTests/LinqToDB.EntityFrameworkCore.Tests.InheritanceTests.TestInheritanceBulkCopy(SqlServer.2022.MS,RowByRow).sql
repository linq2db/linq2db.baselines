-- SqlServer.2022
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



-- SqlServer.2022
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


