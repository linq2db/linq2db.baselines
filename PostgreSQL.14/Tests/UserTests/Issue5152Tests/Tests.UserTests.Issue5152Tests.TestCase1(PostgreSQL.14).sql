-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"SampleClass"
SET
	"MyString" = Replace(Replace("SampleClass"."MyString", ';Example', NULL), 'Example', NULL)
WHERE
	"SampleClass"."MyString" LIKE '%Example%' ESCAPE '~'

