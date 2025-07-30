BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	'1',
	'0'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"

