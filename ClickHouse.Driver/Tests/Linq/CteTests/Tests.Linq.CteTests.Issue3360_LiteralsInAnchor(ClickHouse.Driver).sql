-- ClickHouse.Driver ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		r.Id as Id,
		toUInt8(toUInt8(5)) as Byte,
		toUInt8(toUInt8(5)) as ByteN,
		toUUID(toUUID('0b8afe27-481c-442e-b8cf-729ddfeece29')) as Guid,
		toUUID(toUUID('0b8afe27-481c-442e-b8cf-729ddfeece30')) as GuidN,
		toString('ENUM1_VALUE') as Enum,
		toString('ENUM2_VALUE') as EnumN,
		toBool(true) as Bool,
		toBool(false) as BoolN
	FROM
		Issue3360Table1 r
	WHERE
		r.Id = 2
	UNION ALL
	SELECT
		r_1.Id as Id,
		r_1.Byte as Byte,
		r_1.ByteN as ByteN,
		r_1.Guid as Guid,
		r_1.GuidN as GuidN,
		r_1.Enum as Enum,
		r_1.EnumN as EnumN,
		r_1.Bool as Bool,
		r_1.BoolN as BoolN
	FROM
		Issue3360Table1 r_1
			INNER JOIN cte parent ON r_1.Id = parent.Id + 2
)
SELECT
	t2.Id,
	t2.Byte,
	t2.ByteN,
	t2.Guid,
	t2.GuidN,
	t2.Enum,
	t2.EnumN,
	t2.Bool,
	t2.BoolN
FROM
	(
		SELECT
			t1.Id as Id,
			t1.Byte as Byte,
			t1.ByteN as ByteN,
			t1.Guid as Guid,
			t1.GuidN as GuidN,
			t1.Enum as Enum,
			t1.EnumN as EnumN,
			t1.Bool as Bool,
			t1.BoolN as BoolN
		FROM
			cte t1
	) t2
ORDER BY
	t2.Id

