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


-- SQLite.MS SQLite

SELECT
	[t1].[Discriminator],
	[t1].[Id]
FROM
	[WithInheritance] [t1]
WHERE
	[t1].[Discriminator] IN ('WithInheritanceA2', 'WithInheritanceA1', 'WithInheritanceA')



