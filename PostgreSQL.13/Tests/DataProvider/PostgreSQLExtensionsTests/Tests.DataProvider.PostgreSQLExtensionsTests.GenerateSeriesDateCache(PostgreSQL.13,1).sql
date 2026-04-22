-- PostgreSQL.13 PostgreSQL
DECLARE @start Timestamp -- DateTime2
SET     @start = '2024-01-01'::date
DECLARE @stop Timestamp -- DateTime2
SET     @stop = '2024-01-05'::date
DECLARE @step Interval -- Object
SET     @step = 1.00:00:00

SELECT
	t1.value
FROM
	GENERATE_SERIES(:start, :stop, :step) t1(value)

