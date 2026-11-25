-- YDB Ydb
UPDATE
	SpecialScalarSample
SET
	MyString = Unicode::ReplaceAll(Unicode::ReplaceAll(SpecialScalarSample.MyString, ';Example'u, ''u), 'Example'u, ''u)
WHERE
	SpecialScalarSample.MyString LIKE '%Example%'u ESCAPE '~'s

