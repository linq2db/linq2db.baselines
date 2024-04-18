BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" = 'InsertDefault'

