BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

