-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue NVarChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO "Task"
(
	"Id",
	"TargetName",
	"BdaValue"
)
VALUES
(
	:"Id",
	:"TargetName",
	:"BdaValue"
)

-- SapHana.Native SapHana
SELECT
	"p"."Id",
	"p"."TargetName",
	"p"."BdaValue"
FROM
	"Task" "p"

-- SapHana.Native SapHana
SELECT
	"p"."BdaValue"
FROM
	"Task" "p"

