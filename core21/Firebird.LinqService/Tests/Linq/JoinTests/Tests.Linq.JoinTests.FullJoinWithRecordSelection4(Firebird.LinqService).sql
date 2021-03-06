﻿BeforeExecute
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
SELECT 3,4,'Tag4' FROM rdb$database UNION ALL
SELECT 4,6,'Tag6' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"f"."Id",
	"ft"."Id",
	"ft"."FactId",
	"ft"."Name"
FROM
	"Tag" "ft"
		FULL JOIN "Fact" "f" ON "ft"."FactId" = "f"."Id"
WHERE
	("f"."Id" > 3 OR "ft"."FactId" > 3)

BeforeExecute
-- Firebird

DROP TABLE "Tag"

BeforeExecute
-- Firebird

DROP TABLE "Fact"

