BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Fact"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Fact" ("Id") VALUES (3)
	INTO "Fact" ("Id") VALUES (4)
	INTO "Fact" ("Id") VALUES (5)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Tag"
(
	"Id"     Int          NOT NULL,
	"FactId" Int          NOT NULL,
	"Name"   VarChar(255) NOT NULL,

	CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Tag" ("Id", "FactId", "Name") VALUES (1,3,'Tag3')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (2,3,'Tag3')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (3,4,'Tag4')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	fact_1."Id",
	tagGroup."Id",
	tagGroup."FactId",
	tagGroup."Name"
FROM
	"Fact" fact_1
		LEFT JOIN "Tag" tagGroup ON fact_1."Id" = tagGroup."FactId"
WHERE
	fact_1."Id" > 3

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Tag"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Fact"

