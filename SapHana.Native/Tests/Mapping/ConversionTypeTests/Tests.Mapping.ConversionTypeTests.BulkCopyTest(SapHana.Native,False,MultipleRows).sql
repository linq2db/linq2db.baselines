-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	:"ID",
	:"Data"
)

-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

