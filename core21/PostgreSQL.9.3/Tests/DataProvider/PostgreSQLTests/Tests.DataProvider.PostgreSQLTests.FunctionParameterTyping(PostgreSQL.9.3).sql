BeforeExecute
-- PostgreSQL.9.3 PostgreSQL


CREATE OR REPLACE        FUNCTION test_parameter_typing(psmallint smallint, pint integer, pbigint bigint, pdecimal decimal, pfloat real, pdouble double precision)
 RETURNS smallint
 LANGUAGE sql
AS $function$
   SELECT psmallint;
$function$
;

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @int16 Smallint -- Int16
SET     @int16 = 1::smallint
DECLARE @int32 Integer -- Int32
SET     @int32 = 2
DECLARE @int64 Bigint -- Int64
SET     @int64 = 3
DECLARE @dec_1 Numeric(1, 0) -- Decimal
SET     @dec_1 = 4
DECLARE @fl Real -- Single
SET     @fl = 5
DECLARE @dbl Double
SET     @dbl = 6

SELECT
	test_parameter_typing(:int16, :int32, :int64, :dec_1, :fl, :dbl)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @int16 Smallint -- Int16
SET     @int16 = NULL
DECLARE @int32 Integer -- Int32
SET     @int32 = NULL
DECLARE @int64 Bigint -- Int64
SET     @int64 = NULL
DECLARE @dec_1 Numeric -- Decimal
SET     @dec_1 = NULL
DECLARE @fl Real -- Single
SET     @fl = NULL
DECLARE @dbl Double
SET     @dbl = NULL

SELECT
	test_parameter_typing(:int16, :int32, :int64, :dec_1, :fl, :dbl)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	test_parameter_typing(1::smallint, 2, 3, 4, 5, 6)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	test_parameter_typing(NULL, NULL, NULL, NULL, NULL, NULL)

