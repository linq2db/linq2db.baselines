BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

INSERT INTO "Person"
(
	"FirstName",
	"MiddleName",
	"LastName",
	"Gender"
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'InsertDefault'

