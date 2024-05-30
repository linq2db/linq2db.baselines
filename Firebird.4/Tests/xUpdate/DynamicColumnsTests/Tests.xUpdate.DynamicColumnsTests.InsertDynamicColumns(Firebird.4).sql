BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'John' AND "c_1"."LastName" = 'The Dynamic'

