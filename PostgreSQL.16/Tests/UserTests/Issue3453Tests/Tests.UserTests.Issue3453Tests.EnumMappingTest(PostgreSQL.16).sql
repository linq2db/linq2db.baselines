-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13


DROP TABLE IF EXISTS schedule;
DROP TYPE IF EXISTS time_unit;
CREATE TYPE time_unit AS ENUM ('hour', 'day');

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13


CREATE TABLE IF NOT EXISTS schedule
(
  id SERIAL CONSTRAINT schedule_pk PRIMARY KEY,
  unit                 time_unit   NOT NULL,
  unit_nullable        time_unit       NULL,
  amount               int         NOT NULL
);
INSERT INTO schedule(unit, unit_nullable,amount) VALUES ('day','day',1),('day','day',2),('day','day',3);

-- PostgreSQL.15 PostgreSQL13
DECLARE @Unit Enum -- Object
SET     @Unit = 'hour'
DECLARE @UnitNullable Unknown -- Object
SET     @UnitNullable = NULL
DECLARE @Amount Integer -- Int32
SET     @Amount = 1

INSERT INTO public.schedule
(
	unit,
	unit_nullable,
	amount
)
VALUES
(
	:Unit,
	:UnitNullable,
	:Amount
)

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

-- PostgreSQL.15 PostgreSQL13
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

-- PostgreSQL.15 PostgreSQL13
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

-- PostgreSQL.15 PostgreSQL13
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

-- PostgreSQL.15 PostgreSQL13

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable = 'day'

-- PostgreSQL.15 PostgreSQL13

SELECT
	x.id,
	x.unit,
	x.unit_nullable,
	x.amount
FROM
	public.schedule x
WHERE
	x.unit_nullable IS NULL

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

