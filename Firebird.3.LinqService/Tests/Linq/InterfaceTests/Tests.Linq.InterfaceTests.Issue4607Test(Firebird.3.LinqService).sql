BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1"."ClassProp",
	"t1"."Interface"
FROM
	"SomeTable" "t1"
FETCH NEXT 2 ROWS ONLY

