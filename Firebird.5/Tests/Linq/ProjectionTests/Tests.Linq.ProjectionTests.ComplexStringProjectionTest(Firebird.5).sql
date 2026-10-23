-- Firebird.5 Firebird4
DECLARE @data VarChar -- String
SET     @data = NULL

INSERT INTO "StringTestTable"
(
	ID,
	"Data"
)
VALUES
(
	2,
	@data
)

-- Firebird.5 Firebird4
SELECT
	"t".ID,
	"t"."Data"
FROM
	"StringTestTable" "t"
WHERE
	"t".ID = 2
FETCH NEXT 2 ROWS ONLY

