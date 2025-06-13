Parameters:
@p0='?' (Size = 16)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0)
RETURNING "Id";


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0)
RETURNING "Id";


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0)
RETURNING "Id";


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0)
RETURNING "Id";


Parameters:
@p0='?' (Size = 17)

INSERT INTO "WithInheritance" ("Discriminator")
VALUES (@p0)
RETURNING "Id";


-- SQLite.MS SQLite

SELECT
	[t1].[Discriminator],
	[t1].[Id]
FROM
	[WithInheritance] [t1]
WHERE
	[t1].[Discriminator] IN ('WithInheritanceA2', 'WithInheritanceA1', 'WithInheritanceA')



