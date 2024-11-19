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


