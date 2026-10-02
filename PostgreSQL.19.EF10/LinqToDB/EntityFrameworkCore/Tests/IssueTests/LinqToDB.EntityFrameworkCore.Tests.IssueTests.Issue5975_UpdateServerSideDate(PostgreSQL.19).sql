-- PostgreSQL.19 PostgreSQL12
DELETE FROM
	"Issue5975TableTwos" t1



-- PostgreSQL.19 PostgreSQL12
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


-- PostgreSQL.19 PostgreSQL12
DECLARE @test TimestampTz -- DateTime
SET     @test = '2026-06-06 02:01:01'::timestamp

UPDATE
	"Issue5975TableOnes"
SET
	"FromDate" = CASE
		WHEN "Issue5975TableOnes"."FromDate" IS NOT NULL THEN :test
		ELSE timezone('UTC', now())
	END



SELECT i."Id", i."FromDate", i."Name", i."ToDate"
FROM "Issue5975TableOnes" AS i
ORDER BY i."Id"


