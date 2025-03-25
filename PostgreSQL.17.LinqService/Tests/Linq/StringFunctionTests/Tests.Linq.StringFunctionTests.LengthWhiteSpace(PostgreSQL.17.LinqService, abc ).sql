BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @stringValue Text(5) -- String
SET     @stringValue = ' abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)

