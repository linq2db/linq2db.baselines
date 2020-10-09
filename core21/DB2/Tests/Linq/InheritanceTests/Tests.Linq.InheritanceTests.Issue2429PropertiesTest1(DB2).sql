BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "BaseTable"
(
	"Value" Int NOT NULL,
	"Id"    Int NOT NULL,

	CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
VALUES
(100,1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"x"."Value", 
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"x"."Value", 
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "BaseTable"

