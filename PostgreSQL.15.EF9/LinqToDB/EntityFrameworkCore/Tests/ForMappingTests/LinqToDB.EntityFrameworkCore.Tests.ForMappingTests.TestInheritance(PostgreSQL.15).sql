Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?'

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0)
RETURNING "Id";
INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p1)
RETURNING "Id";
INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p2)
RETURNING "Id";
INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p3)
RETURNING "Id";
INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p4)
RETURNING "Id";


--  PostgreSQL.9.3 PostgreSQL

SELECT
	CASE
		WHEN t1."Discriminator" = 'WithInheritanceA2' THEN True
		ELSE False
	END,
	t1."Id",
	t1."Discriminator",
	CASE
		WHEN t1."Discriminator" = 'WithInheritanceA1' THEN True
		ELSE False
	END,
	CASE
		WHEN t1."Discriminator" = 'WithInheritanceA' THEN True
		ELSE False
	END,
	CASE
		WHEN t1."Discriminator" = 'WithInheritance' THEN True
		ELSE False
	END
FROM
	"WithInheritance" t1
WHERE
	t1."Discriminator" = 'WithInheritanceA' OR t1."Discriminator" = 'WithInheritanceA1' OR
	t1."Discriminator" = 'WithInheritanceA2'



