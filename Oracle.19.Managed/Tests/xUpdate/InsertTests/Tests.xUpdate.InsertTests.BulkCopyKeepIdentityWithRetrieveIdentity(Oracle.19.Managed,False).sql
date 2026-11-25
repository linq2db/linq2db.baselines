-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT Max("Id") FROM "KeepIdentityTable"

-- Oracle.19.Managed Oracle.Managed Oracle12
INSERT ALL
	INTO "KeepIdentityTable" ("Id", "Text") VALUES (1,'Text 1')
	INTO "KeepIdentityTable" ("Id", "Text") VALUES (2,'Text 2')
SELECT * FROM dual

-- Oracle.19.Managed Oracle.Managed Oracle12
INSERT INTO "KeepIdentityTable"
(
	"Text"
)
VALUES
(
	'Text 3'
)

