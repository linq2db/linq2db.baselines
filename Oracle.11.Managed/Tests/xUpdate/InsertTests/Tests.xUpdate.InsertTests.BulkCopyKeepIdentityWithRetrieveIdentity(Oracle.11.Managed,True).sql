-- Oracle.11.Managed Oracle11
SELECT Max("Id") FROM "KeepIdentityTable"

-- Oracle.11.Managed Oracle11
INSERT ALL
	INTO "KeepIdentityTable" ("Id", "Text") VALUES (1,'Text 1')
	INTO "KeepIdentityTable" ("Id", "Text") VALUES (2,'Text 2')
SELECT * FROM dual

-- Oracle.11.Managed Oracle11
INSERT INTO "KeepIdentityTable"
(
	"Text"
)
VALUES
(
	'Text 3'
)

