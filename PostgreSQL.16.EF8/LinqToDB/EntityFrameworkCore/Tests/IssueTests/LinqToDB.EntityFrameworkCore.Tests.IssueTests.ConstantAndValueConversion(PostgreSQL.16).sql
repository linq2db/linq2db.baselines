Parameters:
@p0='?' (DbType = Int16), @p1='?' (DbType = Int16)

INSERT INTO "Issue5388Task" ("IsArchived")
VALUES (@p0)
RETURNING "Id";
INSERT INTO "Issue5388Task" ("IsArchived")
VALUES (@p1)
RETURNING "Id";


-- PostgreSQL.15 PostgreSQL
DECLARE @IsArchived Smallint -- Int16
SET     @IsArchived = 0

SELECT
	t."Id",
	t."IsArchived"
FROM
	"Issue5388Task" t
WHERE
	t."IsArchived" = :IsArchived



