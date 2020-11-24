BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "SelectExpressionTable"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SelectExpressionTable"
(
	ID
)
VALUES
(1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	1
FROM
	"SelectExpressionTable" "_"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "SelectExpressionTable"

