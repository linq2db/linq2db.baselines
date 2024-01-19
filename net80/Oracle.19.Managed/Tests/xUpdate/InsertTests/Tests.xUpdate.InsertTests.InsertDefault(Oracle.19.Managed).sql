BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" = 'InsertDefault'

