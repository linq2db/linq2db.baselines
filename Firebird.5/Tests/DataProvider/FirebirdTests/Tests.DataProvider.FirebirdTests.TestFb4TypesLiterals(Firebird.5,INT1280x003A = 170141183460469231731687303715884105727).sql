BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Int128 Int128 -- Object
SET     @Int128 = 170141183460469231731687303715884105727

INSERT INTO "TestFbTypesTable"
(
	"Id",
	"Int128"
)
VALUES
(
	1,
	@Int128
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."Int128" = 170141183460469231731687303715884105727

