-- PostgreSQL.9.3 PostgreSQL
DECLARE @p -2147483639 -- Object
SET     @p = {1}

SELECT
	t1.value
FROM
	(
		SELECT 1 AS value WHERE 1 = ANY(:p)
	) t1(value)

-- PostgreSQL.9.3 PostgreSQL
DECLARE @p -2147483639 -- Object
SET     @p = {1}

SELECT
	t1.value
FROM
	(
		SELECT 1 AS value WHERE 1 = ANY(:p)
	) t1(value)

