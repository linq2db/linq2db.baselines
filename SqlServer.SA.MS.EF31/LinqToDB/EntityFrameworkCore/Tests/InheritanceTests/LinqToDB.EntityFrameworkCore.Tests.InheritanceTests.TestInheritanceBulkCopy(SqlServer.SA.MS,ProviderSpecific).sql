SELECT [b].[Id], [b].[BlogType], [b].[Url]
FROM [Blogs] AS [b]
WHERE [b].[BlogType] IN (N'blog_base', N'blog_rss')


