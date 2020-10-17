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
	f."Id",
	ft."Id",
	ft."FactId",
	ft."Name"
FROM
	"Tag" ft
		RIGHT JOIN "Fact" f ON ft."FactId" = f."Id"
WHERE
	f."Id" > 3

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Tag"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Fact"

