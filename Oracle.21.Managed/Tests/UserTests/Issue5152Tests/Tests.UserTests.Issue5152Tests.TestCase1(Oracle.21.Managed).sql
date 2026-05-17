-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"SampleClass" sample_1
SET
	"MyString" = Replace(Replace(sample_1."MyString", N';Example', NULL), N'Example', NULL)
WHERE
	sample_1."MyString" LIKE N'%Example%' ESCAPE '~'

