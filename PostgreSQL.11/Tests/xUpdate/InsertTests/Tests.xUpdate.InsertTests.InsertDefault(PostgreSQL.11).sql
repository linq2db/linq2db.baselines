-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

