﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL


DROP TABLE IF EXISTS schedule;
DROP TYPE IF EXISTS time_unit;
CREATE TYPE time_unit AS ENUM ('hour', 'day');

BeforeExecute
INSERT ASYNC BULK public.schedule(unit, unit_nullable, amount)

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	public.schedule t1

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL
DECLARE @unit Enum -- Object
SET     @unit = 'day'

SELECT
	COUNT(*)
FROM
	public.schedule x
WHERE
	x.unit = :unit

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL
DECLARE @unit Enum -- Object
SET     @unit = 'day'

SELECT
	COUNT(*)
FROM
	public.schedule x
WHERE
	x.unit_nullable = :unit

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL
DECLARE @unitNullable Enum -- Object
SET     @unitNullable = 'day'

SELECT
	COUNT(*)
FROM
	public.schedule x
WHERE
	x.unit_nullable = :unitNullable

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	public.schedule x
WHERE
	x.unit_nullable = 'day'

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	public.schedule x
WHERE
	x.unit_nullable IS NULL

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

