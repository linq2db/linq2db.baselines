BeforeExecute
-- Firebird.2.5 Firebird

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

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"Person"
SET
	"Person"."FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'Johnny' AND "c_1"."LastName" = 'Limonadovy'

