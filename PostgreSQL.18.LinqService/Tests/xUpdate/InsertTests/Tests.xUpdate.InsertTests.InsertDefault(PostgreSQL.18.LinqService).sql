BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'InsertDefault'

