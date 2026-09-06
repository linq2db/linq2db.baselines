Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Boolean), @p2='?', @p3='?' (DbType = Int32), @p4='?' (DbType = Boolean), @p5='?'

INSERT INTO "Items" ("Id", "IsDeleted", "Name")
VALUES (@p0, @p1, @p2);
INSERT INTO "Items" ("Id", "IsDeleted", "Name")
VALUES (@p3, @p4, @p5);


-- PostgreSQL.15 PostgreSQL12
SELECT
	p."Id",
	p."Name"
FROM
	"Items" p
WHERE
	NOT p."IsDeleted" AND p."Name" LIKE '%Test%' ESCAPE '~'
ORDER BY
	p."Name"



SELECT i."Id", i."IsDeleted", i."Name"
FROM "Items" AS i
WHERE NOT (i."IsDeleted") AND i."Name" LIKE 'Test%'


