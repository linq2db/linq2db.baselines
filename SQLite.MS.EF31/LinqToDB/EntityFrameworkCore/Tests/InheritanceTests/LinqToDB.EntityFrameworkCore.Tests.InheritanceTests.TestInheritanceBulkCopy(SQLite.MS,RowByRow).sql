-- SQLite.MS SQLite
DECLARE @BlogType NVarChar(9) -- String
SET     @BlogType = 'blog_base'
DECLARE @Url NVarChar(7) -- String
SET     @Url = 'BlogUrl'

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



-- SQLite.MS SQLite
DECLARE @BlogType NVarChar(8) -- String
SET     @BlogType = 'blog_rss'
DECLARE @Url NVarChar(6) -- String
SET     @Url = 'RssUrl'

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



SELECT "b"."Id", "b"."BlogType", "b"."Url"
FROM "Blogs" AS "b"
WHERE "b"."BlogType" IN ('blog_base', 'blog_rss')


