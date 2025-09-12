BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "SomeTable"
(
	"Id",
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	'1',
	'0'
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"

