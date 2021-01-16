BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Entity1711"
(
	"Id" BigInt NOT NULL,

	CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Relationship1711"
(
	"EntityId" BigInt   NOT NULL,
	"Deleted"  smallint NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Relationship1711"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Entity1711"

