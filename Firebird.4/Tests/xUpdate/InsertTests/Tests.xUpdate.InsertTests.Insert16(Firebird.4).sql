-- Firebird.4 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

-- Firebird.4 Firebird4
DECLARE @name Integer -- Int32
SET     @name = 8
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	CAST(@name AS Int) + CAST(@idx AS Int),
	'M'
)

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

-- Firebird.4 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

