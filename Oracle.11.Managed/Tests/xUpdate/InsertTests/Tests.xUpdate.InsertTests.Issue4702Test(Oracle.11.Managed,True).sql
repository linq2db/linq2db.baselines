BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT Max("Id") FROM "Issue4702Table"

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue4702Table" ("Id", "Text") VALUES (1,'Text 1')
	INTO "Issue4702Table" ("Id", "Text") VALUES (2,'Text 2')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "Issue4702Table"
(
	"Text"
)
VALUES
(
	'Text 3'
)

