-- Firebird.4 Firebird4
DECLARE @DecFloat16 Decimal
SET     @DecFloat16 = 1234567890123456E5

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."DecFloat16" = @DecFloat16

-- Firebird.4 Firebird4
DECLARE @DecFloat30 Decimal
SET     @DecFloat30 = 1234567890123456789012345678901234E15

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."DecFloat30" = @DecFloat30

-- Firebird.4 Firebird4
DECLARE @DecFloat34 Decimal
SET     @DecFloat34 = 1234567890123456789012345678901235E15

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."DecFloat34" = @DecFloat34

-- Firebird.4 Firebird4
DECLARE @DecFloat Decimal
SET     @DecFloat = 1234567890123456789012345678901236E15

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."DecFloat" = @DecFloat

-- Firebird.4 Firebird4
DECLARE @DateTimeTZ TimeStampTZ -- Object
SET     @DateTimeTZ = 02/29/2020 17:54:55 UTC

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."DateTimeTZ" = @DateTimeTZ

-- Firebird.4 Firebird4
DECLARE @TimeTZ TimeTZ -- Object
SET     @TimeTZ = 17:54:55.1231234 UTC

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."TimeTZ" = @TimeTZ

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."Int128" = -170141183460469231731687303715884105728

