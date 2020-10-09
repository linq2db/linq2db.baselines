BeforeExecute
-- Firebird

CREATE TABLE "Fact"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

INSERT INTO "Fact"
(
	"Id"
)
SELECT 3 FROM rdb$database UNION ALL
SELECT 4 FROM rdb$database UNION ALL
SELECT 5 FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Tag"
(
	"Id"     Int                                    NOT NULL,
	"FactId" Int                                    NOT NULL,
	"Name"   VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
SELECT 1,3,'Tag3' FROM rdb$database UNION ALL
SELECT 2,3,'Tag3' FROM rdb$database UNION ALL
SELECT 3,4,'Tag4' FROM rdb$database

BeforeExecute
-- Firebird

SELECT 
	"fact_1"."Id", 
	"leftTag"."Id", 
	"leftTag"."FactId", 
	"leftTag"."Name"
FROM
	"Tag" "leftTag"
		RIGHT JOIN "Fact" "fact_1" ON "leftTag"."FactId" = "fact_1"."Id"
WHERE
	"fact_1"."Id" > 3

BeforeExecute
-- Firebird

DROP TABLE "Tag"

BeforeExecute
-- Firebird

DROP TABLE "Fact"

