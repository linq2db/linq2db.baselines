-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

