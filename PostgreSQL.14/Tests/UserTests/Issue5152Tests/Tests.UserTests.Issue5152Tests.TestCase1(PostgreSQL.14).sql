-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
UPDATE
	"SampleClass"
SET
	"MyString" = Replace(Replace("SampleClass"."MyString", ';Example', NULL), 'Example', NULL)
WHERE
	"SampleClass"."MyString" LIKE '%Example%' ESCAPE '~'

