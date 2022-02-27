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
(77,5),
(77,5)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Not Identifier",
	Count(*),
	Sum("t1"."Some Value")
FROM
	"DynamicTable" "t1"
GROUP BY
	"t1"."Not Identifier"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "DynamicTable"

