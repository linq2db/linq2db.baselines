BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int NOT NULL,
	"IntEnumNullable" Int     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer(4) -- Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CreateTableTypes"

