-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 5400l
DECLARE $InTicks Int64
SET     $InTicks = 54000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 54000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 5400l

INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
SELECT
	r.InSeconds + r.InSeconds as SameSeconds,
	r.InTicks + r.InTicks as SameTicks,
	Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) as MixedAdd,
	Unwrap(CAST(r.InSeconds * 10000000l - r.InTicks AS Int64)) as MixedSub,
	Unwrap(CAST(r.InTicks - r.InSeconds * 10000000l AS Int64)) as MixedSubRev,
	Unwrap(CAST(Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) + r.InSeconds * 10000000l AS Int64)) as Nested,
	Unwrap(CAST(Unwrap(CAST(-r.InSeconds AS Int64)) * 10000000l + r.InTicks AS Int64)) as Negated,
	Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) as Conditional,
	Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) + r.InTicks + r.InTicks as BothComputed,
	Unwrap(CAST(Unwrap(CAST(r.InSeconds + r.InSeconds AS Int64)) * 10000000l + r.InTicks AS Int64)) - (r.InTicks + r.InTicks) as BothComputedSub,
	Unwrap(CAST(Unwrap(CAST(-r.InSeconds AS Int64)) * 10000000l - r.InTicks AS Int64)) as NegatedSub
FROM
	DurationRow r
LIMIT 2

-- YDB Ydb
SELECT
	Unwrap(CAST(r.InSeconds * 10000000l + r.InTicks AS Int64)) as c1
FROM
	DurationRow r
LIMIT 2

