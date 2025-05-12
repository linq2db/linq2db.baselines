BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @stringValue Text(4) -- String
SET     @stringValue = 'abc '
DECLARE @stringValue_1 Integer -- Int32
SET     @stringValue_1 = 4

SELECT
	:stringValue,
	:stringValue_1

