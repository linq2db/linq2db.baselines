SELECT "b"."Id", "b"."BlogType", "b"."Url"
FROM "Blogs" AS "b"
WHERE "b"."BlogType" IN ('blog_base', 'blog_rss')


