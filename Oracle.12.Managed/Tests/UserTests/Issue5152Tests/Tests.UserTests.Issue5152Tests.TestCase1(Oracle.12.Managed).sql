-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"SampleClass" sample_1
SET
	"MyString" = Replace(Replace(sample_1."MyString", ';Example', NULL), 'Example', NULL)
WHERE
	sample_1."MyString" LIKE '%Example%' ESCAPE '~'

