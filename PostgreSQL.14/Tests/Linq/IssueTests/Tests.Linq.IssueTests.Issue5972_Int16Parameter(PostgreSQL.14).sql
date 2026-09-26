-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @min Smallint -- Int16
SET     @min = -32768

SELECT
	:min

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @max Smallint -- Int16
SET     @max = 32767

SELECT
	:max

