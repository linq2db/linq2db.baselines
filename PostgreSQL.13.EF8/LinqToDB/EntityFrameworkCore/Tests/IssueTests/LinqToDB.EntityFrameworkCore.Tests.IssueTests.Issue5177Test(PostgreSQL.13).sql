Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Guid)

INSERT INTO "Issue5177" ("Id", "Value")
VALUES (@p0, @p1);


-- PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Value"
FROM
	"Issue5177" r
WHERE
	r."Value" IS NULL
LIMIT 2



