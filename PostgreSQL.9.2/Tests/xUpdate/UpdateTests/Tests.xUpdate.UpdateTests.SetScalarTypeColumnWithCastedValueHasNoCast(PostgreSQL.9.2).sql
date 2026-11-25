-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"SpecialScalarSample"
SET
	"MyString" = Replace(Replace("SpecialScalarSample"."MyString", ';Example', NULL), 'Example', NULL)
WHERE
	"SpecialScalarSample"."MyString" LIKE '%Example%' ESCAPE '~'

