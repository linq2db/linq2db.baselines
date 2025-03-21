BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @stringValue Text(5) -- String
SET     @stringValue = ' abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)

