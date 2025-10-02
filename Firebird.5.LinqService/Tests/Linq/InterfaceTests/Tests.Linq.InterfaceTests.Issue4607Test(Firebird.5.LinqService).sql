BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

INSERT INTO "SomeTable"
(
	"Id",
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	TRUE,
	FALSE
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
FETCH NEXT 2 ROWS ONLY

