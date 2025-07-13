BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT Max("Id") FROM "Issue4702Table"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4702Table" ("Id", "Text") VALUES (1,'Text 1')
	INTO "Issue4702Table" ("Id", "Text") VALUES (2,'Text 2')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "Issue4702Table"
(
	"Text"
)
VALUES
(
	'Text 3'
)

