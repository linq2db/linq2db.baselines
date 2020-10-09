BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CreateTableTypes"
(
	"Id"     Int   NOT NULL,
	"Double" Float NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Double_1 Double(8)
SET     @Double_1 = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Double_1 Double(8)
SET     @Double_1 = 3.1400000000000001

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."Id", 
	"t1"."Double"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CreateTableTypes"

