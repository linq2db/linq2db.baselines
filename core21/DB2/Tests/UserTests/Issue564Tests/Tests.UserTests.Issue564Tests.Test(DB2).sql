BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Parent564"
(
	"Id"          Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Type"        NVarChar(255)                                  NULL,
	"StringValue" NVarChar(20)                                   NULL,
	"IntValue"    Int                                            NULL,

	CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Parent564" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Parent564"

