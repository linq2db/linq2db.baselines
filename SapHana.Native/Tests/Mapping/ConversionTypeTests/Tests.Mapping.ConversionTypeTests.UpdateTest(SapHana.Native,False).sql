-- SapHana.Native SapHana
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = :"Data"
WHERE
	"t1"."ID" = :"ID"

-- SapHana.Native SapHana
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = :"Data"
WHERE
	"t"."Data" = '***XXX***'

-- SapHana.Native SapHana
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = :"Data"
WHERE
	"t"."Data" = :"p"

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

