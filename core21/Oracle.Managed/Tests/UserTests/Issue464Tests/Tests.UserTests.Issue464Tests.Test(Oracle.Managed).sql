BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue464" ("Id", "Value") VALUES (1,1)
	INTO "Issue464" ("Id", "Value") VALUES (2,2)
	INTO "Issue464" ("Id", "Value") VALUES (3,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue464" t1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Issue464"

