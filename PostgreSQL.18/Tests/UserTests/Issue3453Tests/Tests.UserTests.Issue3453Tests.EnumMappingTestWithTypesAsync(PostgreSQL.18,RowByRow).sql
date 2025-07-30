BeforeExecute
-- PostgreSQL.18 PostgreSQL


DROP TABLE IF EXISTS schedule;
DROP TYPE IF EXISTS time_unit;
CREATE TYPE time_unit AS ENUM ('hour', 'day');

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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
-- PostgreSQL.18 PostgreSQL (asynchronously)
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
-- PostgreSQL.18 PostgreSQL (asynchronously)
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
-- PostgreSQL.18 PostgreSQL (asynchronously)
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
-- PostgreSQL.18 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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
-- PostgreSQL.18 PostgreSQL
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
-- PostgreSQL.18 PostgreSQL
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
-- PostgreSQL.18 PostgreSQL

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
-- PostgreSQL.18 PostgreSQL

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
-- PostgreSQL.18 PostgreSQL

SELECT
	t1.id,
	t1.unit,
	t1.unit_nullable,
	t1.amount
FROM
	public.schedule t1

