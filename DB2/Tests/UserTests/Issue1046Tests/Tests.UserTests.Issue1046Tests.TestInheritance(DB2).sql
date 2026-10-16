-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue VarChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO "Task"
(
	"Id",
	"TargetName",
	"BdaValue"
)
VALUES
(
	@Id,
	@TargetName,
	@BdaValue
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."Id",
	"p"."TargetName",
	"p"."BdaValue"
FROM
	"Task" "p"

-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."BdaValue"
FROM
	"Task" "p"

