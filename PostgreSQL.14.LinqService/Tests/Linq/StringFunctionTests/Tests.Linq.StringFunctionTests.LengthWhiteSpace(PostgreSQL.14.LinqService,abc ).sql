BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @stringValue Text(4) -- String
SET     @stringValue = 'abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)

