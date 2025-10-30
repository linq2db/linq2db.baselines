-- Firebird.5 Firebird4

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	TRUE,
	FALSE
)

-- Firebird.5 Firebird4

SELECT
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
FETCH NEXT 2 ROWS ONLY

