BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'The Dynamic',
	'M'
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'John' AND "c_1"."LastName" = 'The Dynamic'

