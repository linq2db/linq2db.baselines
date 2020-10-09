BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CustomerBase"
(
	"Id"           Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"ClientType"   NChar(6)                                   NOT NULL,
	"Name"         NVarChar(255)                                  NULL,
	"ContactEmail" NVarChar(255)                                  NULL,
	"Enabled"      smallint                                       NULL,

	CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"cb"."Id", 
	"cb"."Name", 
	"cb"."ContactEmail", 
	Coalesce("cb"."Enabled", 0)
FROM
	"CustomerBase" "cb"
WHERE
	"cb"."ClientType" = 'Client'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CustomerBase"

