BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @stringValue Text(1) -- String
SET     @stringValue = ' '

SELECT
	:stringValue,
	LENGTH(:stringValue)

