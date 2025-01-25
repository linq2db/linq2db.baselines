BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'InsertDefault'

