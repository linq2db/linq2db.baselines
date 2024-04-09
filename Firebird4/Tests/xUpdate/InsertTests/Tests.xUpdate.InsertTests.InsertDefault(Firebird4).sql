BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'InsertDefault'

