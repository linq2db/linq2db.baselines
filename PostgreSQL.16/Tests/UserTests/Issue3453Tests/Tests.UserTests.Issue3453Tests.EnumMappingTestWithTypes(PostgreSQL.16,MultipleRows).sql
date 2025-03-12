BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL


DROP TABLE IF EXISTS schedule;
DROP TYPE IF EXISTS time_unit;
CREATE TYPE time_unit AS ENUM ('hour', 'day');

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL

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

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable = 'day'

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable IS NULL

BeforeExecute
-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

