-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @min Smallint -- Int16
SET     @min = -32768

SELECT
	:min

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @max Smallint -- Int16
SET     @max = 32767

SELECT
	:max

