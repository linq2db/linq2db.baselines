BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL


DROP TABLE IF EXISTS schedule;
DROP TYPE IF EXISTS time_unit;
CREATE TYPE time_unit AS ENUM ('hour', 'day');

BeforeExecute
-- SQLite.MS PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Unit Enum -- Object
SET     @Unit = 'day'
DECLARE @UnitNullable Enum -- Object
SET     @UnitNullable = 'day'
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

BeforeExecute
-- SQLite.MS PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Unit Enum -- Object
SET     @Unit = 'day'
DECLARE @UnitNullable Enum -- Object
SET     @UnitNullable = 'day'
DECLARE @Amount Integer -- Int32
SET     @Amount = 2

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

BeforeExecute
-- SQLite.MS PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Unit Enum -- Object
SET     @Unit = 'day'
DECLARE @UnitNullable Enum -- Object
SET     @UnitNullable = 'day'
DECLARE @Amount Integer -- Int32
SET     @Amount = 3

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

BeforeExecute
-- SQLite.MS PostgreSQL.9.5 PostgreSQL (asynchronously)
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

BeforeExecute
-- SQLite.MS PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

BeforeExecute
-- SQLite.MS PostgreSQL.9.5 PostgreSQL
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
-- SQLite.MS PostgreSQL.9.5 PostgreSQL
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
-- SQLite.MS PostgreSQL.9.5 PostgreSQL
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
-- SQLite.MS PostgreSQL.9.5 PostgreSQL

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
-- SQLite.MS PostgreSQL.9.5 PostgreSQL

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
-- SQLite.MS PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

