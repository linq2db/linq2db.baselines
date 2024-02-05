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
	"Person" "t1"
WHERE
	"t1"."FirstName" = 'InsertDefault'

