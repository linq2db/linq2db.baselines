-- YDB Ydb

UPDATE
	SampleClass
SET
	MyString = Unicode::ReplaceAll(Unicode::ReplaceAll(SampleClass.MyString, ';Example'u, ''u), 'Example'u, ''u)
WHERE
	SampleClass.MyString LIKE '%Example%'u ESCAPE '~'s

