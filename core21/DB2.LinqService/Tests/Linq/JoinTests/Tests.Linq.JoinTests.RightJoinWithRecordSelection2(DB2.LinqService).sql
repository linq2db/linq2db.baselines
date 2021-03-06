﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Fact"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Tag"
(
	"Id"     Int           NOT NULL,
	"FactId" Int           NOT NULL,
	"Name"   NVarChar(255) NOT NULL,

	CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Tag"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Fact"

