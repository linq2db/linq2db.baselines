BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @stringValue Text(4) -- String
SET     @stringValue = 'abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)

