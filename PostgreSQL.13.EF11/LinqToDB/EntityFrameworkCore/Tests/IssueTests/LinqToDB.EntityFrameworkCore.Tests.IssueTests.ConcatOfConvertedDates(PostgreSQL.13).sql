-- PostgreSQL.13 PostgreSQL12
DELETE FROM
	"Issue5975TableTwos" t1



-- PostgreSQL.13 PostgreSQL12
DELETE FROM
	"Issue5975TableOnes" t1



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?', @p3='?' (DbType = DateTime), @p4='?' (DbType = Int32), @p5='?' (DbType = DateTime), @p6='?', @p7='?' (DbType = DateTime), @p8='?' (DbType = Int32), @p9='?', @p10='?' (DbType = DateTime), @p11='?' (DbType = Int32), @p12='?' (DbType = DateTime)

INSERT INTO "Issue5975TableOnes" ("Id", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3);
INSERT INTO "Issue5975TableOnes" ("Id", "FromDate", "Name", "ToDate")
VALUES (@p4, @p5, @p6, @p7);
INSERT INTO "Issue5975TableTwos" ("Id", "Code", "FromDate", "TableOneId", "ToDate")
VALUES (@p8, @p9, @p10, @p11, @p12);


-- PostgreSQL.13 PostgreSQL12
SELECT
	t2."Code",
	t1."FromDate",
	t1."ToDate"
FROM
	"Issue5975TableTwos" t2
		LEFT JOIN "Issue5975TableOnes" t1 ON t2."TableOneId" = t1."Id"
UNION ALL
SELECT
	t2_1."Code",
	t2_1."FromDate",
	t2_1."ToDate"
FROM
	"Issue5975TableTwos" t2_1



