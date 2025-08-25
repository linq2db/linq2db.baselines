BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Byte,
	t1.Byte_1,
	t1.Guid,
	t1.GuidN,
	t1.Enum,
	t1.EnumN,
	t1.Bool,
	t1.BoolN
FROM
	(
		SELECT
			r.Id as Id,
			toUInt8(toUInt8(5)) as Byte,
			toUInt8(toUInt8(5)) as Byte_1,
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
			r_1.ByteN as Byte_1,
			r_1.Guid as Guid,
			r_1.GuidN as GuidN,
			r_1.Enum as Enum,
			r_1.EnumN as EnumN,
			r_1.Bool as Bool,
			r_1.BoolN as BoolN
		FROM
			Issue3360Table1 r_1
		WHERE
			r_1.Id = 4
	) t1
ORDER BY
	t1.Id

