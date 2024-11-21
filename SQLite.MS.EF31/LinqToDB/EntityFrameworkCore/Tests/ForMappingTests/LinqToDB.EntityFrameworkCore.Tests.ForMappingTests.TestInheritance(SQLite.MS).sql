Parameters:
@p0='?' (Size = 16)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0);
SELECT "Id"
FROM "WithInheritance"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0);
SELECT "Id"
FROM "WithInheritance"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0);
SELECT "Id"
FROM "WithInheritance"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0);
SELECT "Id"
FROM "WithInheritance"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0);
SELECT "Id"
FROM "WithInheritance"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


--  SQLite.MS SQLite

SELECT
	CASE
		WHEN [t1].[Discriminator] = 'WithInheritanceA2' THEN 1
		ELSE 0
	END,
	[t1].[Id],
	[t1].[Discriminator],
	CASE
		WHEN [t1].[Discriminator] = 'WithInheritanceA1' THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[Discriminator] = 'WithInheritanceA' THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[Discriminator] = 'WithInheritance' THEN 1
		ELSE 0
	END
FROM
	[WithInheritance] [t1]
WHERE
	[t1].[Discriminator] = 'WithInheritanceA' OR [t1].[Discriminator] = 'WithInheritanceA1' OR
	[t1].[Discriminator] = 'WithInheritanceA2'



