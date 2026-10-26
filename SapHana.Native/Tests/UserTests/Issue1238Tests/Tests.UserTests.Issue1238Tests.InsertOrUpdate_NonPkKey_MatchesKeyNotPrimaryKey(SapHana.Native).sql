-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code Integer -- Int32
SET     @Code = 100
DECLARE @Val Integer -- Int32
SET     @Val = 10

INSERT INTO "SUG001NonPkKey"
(
	"Id",
	"Code",
	"Val"
)
VALUES
(
	:"Id",
	:"Code",
	:"Val"
)

-- SapHana.Native SapHana
UPDATE
	"SUG001NonPkKey" "t1"
SET
	"Id" = 2,
	"Val" = 20
WHERE
	"t1"."Code" = 100

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Val"
FROM
	"SUG001NonPkKey" "t1"

