BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Fact"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "Fact" ("Id") VALUES (3)
	INTO "Fact" ("Id") VALUES (4)
	INTO "Fact" ("Id") VALUES (5)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Tag"
(
	"Id"     Int          NOT NULL,
	"FactId" Int          NOT NULL,
	"Name"   VarChar(255) NOT NULL,

	CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "Tag" ("Id", "FactId", "Name") VALUES (1,3,'Tag3')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (2,3,'Tag3')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (3,4,'Tag4')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	fact_1."Id",
	tag_1."Id",
	tag_1."FactId",
	tag_1."Name"
FROM
	"Fact" fact_1
		LEFT JOIN "Tag" tag_1 ON tag_1."FactId" = fact_1."Id"
WHERE
	fact_1."Id" > 3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "Tag"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "Fact"

