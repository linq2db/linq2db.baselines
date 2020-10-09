BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	FK   Int     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"_"."Id"
FROM
	"TestEqualsTable1" "_"
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			"TestEqualsTable2" "__"
		WHERE
			"_"."Id" = "__".FK AND "__"."Id" IS NULL
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestEqualsTable1"

