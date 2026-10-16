-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
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

-- Firebird.5 Firebird4
SELECT
	"p"."Id",
	"p"."TargetName",
	"p"."BdaValue"
FROM
	"Task" "p"

-- Firebird.5 Firebird4
SELECT
	"p"."BdaValue"
FROM
	"Task" "p"

