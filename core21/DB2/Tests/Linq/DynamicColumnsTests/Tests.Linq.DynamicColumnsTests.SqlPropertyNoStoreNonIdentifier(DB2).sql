BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "DynamicTable"
(
	ID               Int GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Not Identifier" Int                              NOT NULL,
	"Some Value"     Int                              NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(77,0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"d"."Not Identifier"
FROM
	"DynamicTable" "d"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "DynamicTable"

