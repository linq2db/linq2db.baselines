-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @min Bigint -- Int64
SET     @min = -9223372036854775808

SELECT
	:min

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @max Bigint -- Int64
SET     @max = 9223372036854775807

SELECT
	:max

