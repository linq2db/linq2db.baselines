BeforeExecute
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
	"f"."Id", 
	"ft"."Id", 
	"ft"."FactId", 
	"ft"."Name"
FROM
	"Tag" "ft"
		RIGHT JOIN "Fact" "f" ON "ft"."FactId" = "f"."Id"
WHERE
	"f"."Id" > 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Tag"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Fact"

