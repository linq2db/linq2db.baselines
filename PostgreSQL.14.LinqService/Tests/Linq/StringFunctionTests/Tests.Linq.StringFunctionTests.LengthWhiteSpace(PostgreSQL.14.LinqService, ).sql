BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @stringValue Text(1) -- String
SET     @stringValue = ' '

SELECT
	:stringValue,
	LENGTH(:stringValue)

