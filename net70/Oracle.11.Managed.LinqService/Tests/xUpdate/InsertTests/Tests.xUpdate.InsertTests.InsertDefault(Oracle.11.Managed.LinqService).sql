BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" = 'InsertDefault'

