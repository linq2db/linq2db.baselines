BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CreateTableTypes"
(
	"Id"             Int   NOT NULL,
	"DoubleNullable" Float     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Double
SET     @DoubleNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Double(8)
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CreateTableTypes"

