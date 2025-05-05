Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p3='?' (DbType = Int32), @p4='?' (DbType = Int32)

INSERT INTO "IssueEnum" ("Value")
VALUES (@p0)
RETURNING "Id";
INSERT INTO "IssueEnum" ("Value")
VALUES (@p1)
RETURNING "Id";
INSERT INTO "IssueEnum" ("Value")
VALUES (@p2)
RETURNING "Id";
INSERT INTO "IssueEnum" ("Value")
VALUES (@p3)
RETURNING "Id";
INSERT INTO "IssueEnum" ("Value")
VALUES (@p4)
RETURNING "Id";


-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"IssueEnum" t1



