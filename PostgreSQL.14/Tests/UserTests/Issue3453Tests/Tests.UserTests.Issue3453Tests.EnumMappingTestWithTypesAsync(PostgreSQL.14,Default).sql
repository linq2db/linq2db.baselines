-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL


DROP TABLE IF EXISTS schedule;
DROP TYPE IF EXISTS time_unit;
CREATE TYPE time_unit AS ENUM ('hour', 'day');

-- PostgreSQL.9.5 PostgreSQL

INSERT INTO public.schedule
(
	unit,
	unit_nullable,
	amount
)
VALUES
('day','day',1),
('day','day',2),
('day','day',3),
('hour',NULL,1)

-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

-- PostgreSQL.9.5 PostgreSQL
DECLARE @unit Enum -- Object
SET     @unit = 'day'

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit = :unit

-- PostgreSQL.9.5 PostgreSQL
DECLARE @unit Enum -- Object
SET     @unit = 'day'

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable = :unit

-- PostgreSQL.9.5 PostgreSQL
DECLARE @unitNullable Enum -- Object
SET     @unitNullable = 'day'

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable = :unitNullable

-- PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable = 'day'

-- PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable IS NULL

-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

