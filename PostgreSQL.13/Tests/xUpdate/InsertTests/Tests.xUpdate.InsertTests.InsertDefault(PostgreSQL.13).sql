-- PostgreSQL.13 PostgreSQL12

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

-- PostgreSQL.13 PostgreSQL12

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

