-- PostgreSQL.9.5 PostgreSQL
DECLARE @BlogType Varchar(9) -- String
SET     @BlogType = 'blog_base'
DECLARE @Url Text(7) -- String
SET     @Url = 'BlogUrl'

INSERT INTO "Blogs"
(
	"BlogType",
	"Url"
)
VALUES
(
	:BlogType,
	:Url
)



-- PostgreSQL.9.5 PostgreSQL
DECLARE @BlogType Varchar(8) -- String
SET     @BlogType = 'blog_rss'
DECLARE @Url Text(6) -- String
SET     @Url = 'RssUrl'

INSERT INTO "Blogs"
(
	"BlogType",
	"Url"
)
VALUES
(
	:BlogType,
	:Url
)



SELECT b."Id", b."BlogType", b."Url"
FROM "Blogs" AS b


