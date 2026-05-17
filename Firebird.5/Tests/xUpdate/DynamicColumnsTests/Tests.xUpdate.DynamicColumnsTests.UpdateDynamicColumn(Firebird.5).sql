-- Firebird.5 Firebird4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."LastName" = 'Limonadovy'

-- Firebird.5 Firebird4

UPDATE
	"Person" "c_1"
SET
	"FirstName" = 'Johnny'
WHERE
	"c_1"."LastName" = 'Limonadovy'

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'Johnny' AND "c_1"."LastName" = 'Limonadovy'

