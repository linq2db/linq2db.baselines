-- Firebird.2.5 Firebird
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
	CAST(@data AS VARCHAR(1))
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t".ID,
	"t"."Data"
FROM
	"StringTestTable" "t"
WHERE
	"t".ID = 2

