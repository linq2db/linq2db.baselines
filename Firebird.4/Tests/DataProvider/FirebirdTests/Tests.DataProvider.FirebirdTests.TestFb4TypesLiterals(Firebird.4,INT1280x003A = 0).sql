BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Int128 Int128 -- Object
SET     @Int128 = 0

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
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."Int128" = 0

